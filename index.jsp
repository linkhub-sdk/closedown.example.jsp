<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/main.css" media="screen" />
		
		<title>휴폐업조회 SDK JSP Example.</title>
	</head>

	<body>

		<div id="content">

			<p class="heading1">휴폐업조회 API SDK - JSP Example.</p>
			
			<br/>

			<fieldset class="fieldset1">
				<legend>휴폐업조회 API</legend>
				<ul>
					<li><a href="${pageContext.request.contextPath}/CloseDownExample/checkCorpNum.jsp">checkCorpNum</a> - 휴폐업조회(단건) </li>
					<li><a href="${pageContext.request.contextPath}/CloseDownExample/checkCorpNums.jsp">checkCorpNums</a> - 휴폐업조회(대량) </li>
				</ul>			
			</fieldset>
			<br />

			<fieldset class="fieldset1">
				<legend>과금 API</legend>
				<ul>
					<li><a href="${pageContext.request.contextPath}/CloseDownExample/getUnitCost.jsp">getUnitCost</a> - 조회 단가 확인</li>
					<li><a href="${pageContext.request.contextPath}/CloseDownExample/getBalance.jsp">getBalance</a> - 잔여포인트 확인</li>
				</ul>
			</fieldset>
	
			<br />
		 </div>
	</body>
</html>