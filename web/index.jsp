<%--
  Created by IntelliJ IDEA.
  User: Que
  Date: 13-Nov-19
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Hello, I am a Java web app!</title>
</head>
<body>
<h1>Simple Java Web App Demo</h1>
<p>To invoke the java servlet click <a href="MyServlet">here</a></p>
<form action="FirstServlet" method="post">
  Name:<input type="text" name="username"/><br/><br/>
  Password:<input type="password" name="userpass"/><br/><br/>
  <input type="submit" value="login"/>
</body>
</html>