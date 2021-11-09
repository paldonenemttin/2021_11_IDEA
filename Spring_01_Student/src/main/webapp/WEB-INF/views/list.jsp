<%--
  Created by IntelliJ IDEA.
  User: junse
  Date: 2021-11-03
  Time: 오후 1:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<jsp:include page="home.jsp" />
<body>
<div>
    <table>
        <thead>
            <tr>
                <th>ㅇ</th>
                <th>d</th>
            </tr>
        </thead>
        <tbody>

        <c:forEach items="${STLIST}" var="ST">
            <tr>
                <td>${ST.st_num}</td>
                <td>${ST.st_num}</td>
                <td>${ST.st_num}</td>
                <td>${ST.st_num}</td>
                <td>${ST.st_num}</td>
                <td>${ST.st_num}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div>
    <button>추가</button>
</div>
</body>
</html>
