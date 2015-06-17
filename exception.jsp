<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@page import="kr.co.linkhub.closedown.api.CloseDownException"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/main.css" media="screen" />
		
		<title>휴폐업조회 SDK jsp Example.</title>
	</head>
	<body>

		<div id="content">

			<p class="heading1">Exception Occurred</p>
			
			<br/>
			
			<fieldset class="fieldset1">
				<legend>예외 발생</legend>

				<ul>
					<li>Exception.code : <%=exception instanceof CloseDownException ? ((CloseDownException)exception).getCode() : "-"%></li>
					<li>Exception.message : <%=exception.getMessage()%></li>
				</ul>
				
			</fieldset>
			
		 </div>
	</body>
</html>