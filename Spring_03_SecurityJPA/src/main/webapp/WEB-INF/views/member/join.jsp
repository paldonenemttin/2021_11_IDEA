<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<script src="${rootPath}/webjars/jquery/dist/jquery.min.js" />
<script>
        $(function (){
                // 입력받스에서 tab을 누르거나 마우스를 다른 곳으로 클릭 시
                // lost focus
                $("input#username").on("blur", function (){
                        $.ajax(url : "${rootPath}/member/idcheck",
                                data: "$(username)")
                        .done(function (result){
                                if(result) {
                                        alert("이미 사용중")
                                        $(this).focus()
                                }else{
                                        alert("사용가능")
                                }
                        })
                })
        })

        $(function (){
                $("button.btn_join_ok").on("click", function (){
                        const username = $("#username").val()
                        const password = $("#password").val()
                        const re_password = $("#re_password").val()
                        const email = $("#email").val()

                        if(username.val() === ""){
                                alert("사용자이름은 반드시 입력")
                                username.focus()
                                return false
                        }
                        if(password.val() === ""){
                                alert("password 반드시 입력")
                                username.focus()
                                return false
                        }
                        if(re_password.val() === ""){
                                alert("이것도 반드시 입력")
                                username.focus()
                                return false
                        }
                        if(password.val() !== re_password.val()){
                                alert("비밀번호 불일치")
                                password.val("")
                                re_password.val("")
                                username.focus()
                                return false
                        }
                        $("form.join").submit()
                })
        })
</script>
<style>
    form.join{
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    input.info{
        border: 1px solid #ddd;
        width: 50%;
        height: 50px;
        margin-bottom: 10px;
        padding:5px;
        text-align: center;
        color: #eee;
        font-size: 15px;
    }
    button#btn_join{
        background-color: deepskyblue;
        width: 50%;
        height: 50px;
        border-style: none;
        color: white;
        padding: 5px;
        text-align: center;
    }
    input p{

    }
    button#btn_join:hover{
        cursor: pointer;
    }
</style>
<form:form cssClass="join">
        <input name="username" id="username" class="info" placeholder="사용자이름">
        <input name="password" id="password" class="info" placeholder="비밀번호">
        <input name="re_password" id="re_password" class="info" placeholder="비번 확인">
        <input name="email" id="email" class="info" placeholder="Email">
        <button id="btn_join" class="btn_join_ok">회원가입 신청</button>
</form:form>

