<%@ page contentType="text/html;charset=utf-8" isErrorPage="true" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (request.getHeader("x-requested-with") != null) {
        //response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
        response.setContentType("application/json");
        //避免乱码
        response.setCharacterEncoding("UTF-8");
        response.setHeader("Cache-Control", "no-cache, must-revalidate");
        PrintWriter pw = response.getWriter();
        pw.write("{\"success\":false,\"msg\":\"" + exception + "\"}");
        pw.flush();
        pw.close();
        return;
    }
    pageContext.setAttribute("ctx", request.getContextPath());
    pageContext.setAttribute("debug", true);
    pageContext.setAttribute("now", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS").format(new Date()));
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>error</title>
    <meta charset="utf-8"/>
</head>
<body class="page-error-full-page">
<div class="row">
    <div class="col-md-12 page-error">
        <div class="number color-${pageContext.errorData.statusCode}">
            ${pageContext.errorData.statusCode}
        </div>
        <div class="details">
            <h3>OOPS! 系统异常.</h3>
            <p>
                请联系管理员<br/>
                返回<br/><br/>
            </p>
        </div>
    </div>
</div>
<br/><br/>
<c:if test="${debug}">
    <div class="row">
        <div class="col-md-12">
            <pre style="margin: 10px;">${now} ${pageContext.errorData.requestURI} [${pageContext.request.method}]</pre>
            <pre style="margin: 10px;">${pageContext.errorData.throwable.message}</pre>
            <pre style="margin: 10px;">${pageContext.errorData.throwable.cause}</pre>
            <pre style="margin: 10px;">${pageContext.errorData.throwable.cause.stackTrace[0]}</pre>
        </div>
    </div>
</c:if>
</body>
</html>
