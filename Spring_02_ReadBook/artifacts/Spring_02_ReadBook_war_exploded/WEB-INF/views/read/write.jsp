<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<link href="${rootPath}/static/write.css?ver=2021-11-09-001" rel="stylesheet">
<form>
    <div class="content-box">
        <div class="one">
            <input placeholder="ISBN">
            <input placeholder="title">
        </div>
        <div class="two">
            <input id="date" placeholder="date">
            <input class="time" placeholder="start-time">
            <input class="time" placeholder="end-time">
        </div>
        <div class="three">
            <input id="" placeholder="한줄소감">
            <input id="texterea" placeholder="자세히">
        </div>
    </div>
    <div class="button_box">
        <button class="btn_boys" id="save">저장</button>
        <button class="btn_boys" id="reset">새로작성</button>
        <button class="btn_boys" id="list">리스트</button>
    </div>
</form>