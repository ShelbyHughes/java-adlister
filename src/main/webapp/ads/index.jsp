<%--
  Created by IntelliJ IDEA.
  User: shelbyhughes
  Date: 2/27/20
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp"/>
</head>
<body>
    <jsp:include page="/partials/navbar.jsp" />
        <div class="container">
            <c:forEach var="ad" items="${ads}">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
            </c:forEach>
        </div>
</body>
</html>
