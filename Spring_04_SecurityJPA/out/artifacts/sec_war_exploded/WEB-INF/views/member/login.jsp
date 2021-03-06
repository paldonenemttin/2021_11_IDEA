<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="${rootPath}/webjars/jquery/3.6.0/dist/jquery.min.js"/>
<script src="${rootPath}/webjars/jquery/dist/jquery.min.js" />
<link href="${rootPath}/static/css/login.css" rel="stylesheet" />
<script>
    $(function (){
        $("button.btn_join").on("click",function (){
            location.href ="${rootPath}/member/join"
        })
    })
</script>
<form:form action="${rootPath}/login" cssClass="login_form">
    <fieldset>
        <h2>로그인</h2>
        <c:if test="${param.error != null}">
            <h3>로그인 오류!!!</h3>
        </c:if>
        <input
                placeholder="사용자 ID"
                name="username">
        <input
                placeholder="비밀번호"
                type="password"
                name="password">
        <button class="btn_login">로그인</button>
        <button type="button" class="btn_join">회원가입</button>
    </fieldset>
</form:form>
