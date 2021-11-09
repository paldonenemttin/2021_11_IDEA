<%--
  Created by IntelliJ IDEA.
  User: junse
  Date: 2021-11-03
  Time: 오전 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>Title</title>
</head>
<style>
    div.nav{
        width: 100vw;
        height: 40px;
        background-color: aquamarine;
        color: pink;
        display: inline-block;
        text-decoration: none;
        margin: unset;
    }

    div.head{
        width: 100vw;
        height: 20vh;
        background-color: mintcream;
        color: powderblue;
        align-content: center;
        justify-content: center;
    }
</style>
<body>
<div class="head">
    <header>
        <h1>고려 고교 학사관리 2021 v1</h1>
    </header>
</div>
<div class="nav">
    <section>
        <nav>
            <ul>
                <li>HOME</li>
                <li>학생정보</li>
                <li>성적알람표</li>
                <li>로그인</li>
            </ul>
        </nav>
    </section>
</div>

</body>
</html>
