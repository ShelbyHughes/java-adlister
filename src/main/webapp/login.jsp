<%--
  Created by IntelliJ IDEA.
  User: shelbyhughes
  Date: 2/26/20
  Time: 4:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;text/css;charset=UTF-8" language="java" %>
<%
    if(request.getMethod().equalsIgnoreCase("post")){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(username != null && username.equalsIgnoreCase("admin") && password != null && password.equals("password")){
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<html>
<head>
<jsp:include page="partials/head.jsp" />
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="container">
    <h1 class="example">Log in</h1>
    <form action="/login.jsp" method="POST">
        <div class="form-group">
            <div class="form-group">
                <label for="username" class="example">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="example">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>