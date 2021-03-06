<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/main.css" media="screen" />
		<title>휴폐업조회 SDK JSP Example.</title>
	</head>

<%@ include file="common.jsp" %>
<%@page import="kr.co.linkhub.closedown.api.CloseDownChecker"%>
<%@page import="kr.co.linkhub.closedown.api.CloseDownException"%>
<%@page import="kr.co.linkhub.closedown.api.CorpState"%>

<%
	//사업자번호 배열, 최대 1000건
	String[] corpNumList = new String[] {"1234567890", "4352343543", "4108600477", "8888888888", "1111111111"};
	
	CorpState[] corpStates = null;

	try {

		corpStates = closedownChecker.CheckCorpNum(corpNumList);
		
	} catch (CloseDownException ce){

		throw ce;
	}

%>

	<body>
		<div id="content">
			<p class="heading1">휴폐업조회 API SDK - JSP Example.</p>
			<br/>
			<fieldset class="fieldset1">
				<legend>휴폐업조회 대량</legend>
				<br/>
				<p class="info"> type : null (알수없음), 1 (부가가치세 일반과세자), 2 (부가가치세 면세과세자), 3 (부가치세 간이과세자) 4 (비영리법인 또는 국가기관, 고유번호가 부여된 단체)</p>
				<p class="info"> state : null (알수없음), 0 (등록되지 않은 사업자번호), 1 (사업중), 2 (폐업), 3 (휴업)</p>	

	
			<%
				CorpState corpState = null;
			
				for(int i=0; i<corpStates.length; i++){
					corpState = corpStates[i];
			%>
					<fieldset class ="fieldset2">
						<legend>휴폐업조회 - 대량</legend>
						<ul>
							<li>corpNum [사업자번호] : <%=corpState.getCorpNum()%></li>
							<li>type [사업 유형] : <%=corpState.getType()%></li>
							
							<li>state [휴폐업 상태] : <%=corpState.getState()%></li>
							<li>stateDate [휴폐업일자] : <%=corpState.getStateDate()%></li>
							<li>checkDate [확인일자] : <%=corpState.getCheckDate()%></li>
						</ul>
					</fieldset>
			<%
				}
			
			%>
			
			</fieldset>			
			<br />
		 </div>
		 </script>		 
	</body>
</html>