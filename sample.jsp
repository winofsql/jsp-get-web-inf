<%@ page
    language="java"
    import="java.util.*"
    contentType="text/html;charset=utf-8" %>
<%!
// *********************************************************
// ローカル関数
// *********************************************************
%>
<%
// *********************************************************
// ページ処理
// *********************************************************
request.setCharacterEncoding("utf-8");

String title = "WEB-INF\\web.xml";

%>
<!DOCTYPE html>
<html>
<head>
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css">

<style>
#main {
    font-size: 24px;
}

#content {
    white-space: pre;
}
</style>
</head>
<body>
<div id="main">
<div class="alert alert-primary"><%= title %></div>
<div id="content" class="m-5">
<% 

Enumeration enumParam = application.getInitParameterNames();
String key;
String value;

while( enumParam.hasMoreElements() ) {
    key = enumParam.nextElement().toString();
    value = application.getInitParameter(key);
    out.println( String.format("%s : %s", key, value ) );
}

%>

</div>
</div>
</body>
</html>
