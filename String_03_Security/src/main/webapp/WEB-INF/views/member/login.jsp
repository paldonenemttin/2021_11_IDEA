<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<style>
    form.login_form{
        width: 400px;
    }
    form.login_form input{
        background: none;
        margin: 20px auto;
        text-align: center;
        border: 2px solid deepskyblue;
        padding: 14px 10px;

    }
    form.login_form h3{

    }

    form.login_form input:focus{
        width: 280px;
        border-color: lawngreen;
    }
</style>
<form:form action="${rootPath}/login" class="login_form">
    <fieldset>
        <legend>로그인</legend>
        <c:if test="${param.error}">
            <h3>로그인 하시죠?</h3>
        </c:if>
        <input placeholder="사용자 ID">
        <input placeholder="비밀번호" type="password">
        <button>로그인</button>
        <button type="button">회원가입</button>
    </fieldset>
</form:form>