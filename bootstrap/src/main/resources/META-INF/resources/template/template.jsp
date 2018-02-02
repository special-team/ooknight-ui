<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>template</title>
    <link href="${pageContext.request.contextPath}/static/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="javascript:">系统后台</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="javascript:">功能A</a></li>
                <li><a href="#">功能B</a></li>
                <li><a href="#">功能C</a></li>
            </ul>
        </div>
    </div>
</nav>
<hr>
<div class="container-fluid">
    <form method="post">
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th><label>LOGGER (<a href="#">刷新</a>)</label></th>
                <th>LEVEL</th>
                <th>CURRENT</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><label><input type="text" readonly="readonly" name="logger_update_name" value="" style="width:100%;border: none;"></label></td>
                <td width="80">内容2</td>
                <td width="80"><label><input type="text" disabled="disabled" value="" style="width:100%;border:none;"></label></td>
            </tr>
            <tr>
                <td colspan="3">呵呵</td>
            </tr>
            </tbody>
        </table>
        <br/>
        <button class="btn btn-primary" type="submit" name="op" value="test">测试</button>
        <button class="btn btn-success" type="submit" name="op" value="change">修改</button>
        <button class="btn btn-warning" type="submit" name="op" value="reset">重置</button>
    </form>
</div>
<script src="${pageContext.request.contextPath}/static/plugins/jquery/jquery-2.2.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
