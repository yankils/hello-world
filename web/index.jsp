<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/15/17
  Time: 3:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Main Page</title>
  </head>
  <body>
    <h1>Welcome!!</h1>
    <p>Please select a color...</p>
    <form action="MyServlet" method="post">
      <input type="radio" name="color" value="blue">Blue
      <input type="radio" name="color" value="yellow">Yellow
      <input type="radio" name="color" value="red">Red
      <input type="radio" name="color" value="green">Green
      <input type="submit" value="submit">
    </form>
  </body>
</html>
