<%--
===================================================================================
* Class Module for base module for CloseDown API SDK. It include base functionality for
* RESTful web service request and parse json result. It uses Linkhub class module
* to accomplish authentication APIs.
* 
* http://www.linkhub.co.kr
* Author : Jeong Yoohan (yhjeong@linkhub.co.kr)
* Written : 2015-06-17
===================================================================================
--%>

<%@page errorPage="/exception.jsp" %>

<jsp:useBean id="closedownChecker" scope="application" class="kr.co.linkhub.closedown.api.CloseDownCheckerImp"/>

<%-- 링크아이디 --%>
<jsp:setProperty name="closedownChecker" property="linkID" value="TESTER"/>

<%-- 발급받은 비밀키, 사용자 인증에 사용되는 정보이므로 유출에 주의 --%>
<jsp:setProperty name="closedownChecker" property="secretKey" value="SwWxqU+0TErBXy/9TVjIPEnI0VTUMMSQZtJf3Ed8q3I="/>