<%@ page import="lugait.Resident" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resident.label', default: 'Resident')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<center>
	<body>
	<br><br>		
		<div align="center">	
			<ul class="nav nav-pills" style="border: solid 0px #0000FF;">
			<li class="active"><a href="http://localhost:8080/Lugait/resident/list">Resident List</a></li>
			</ul>
		<g:if test="${flash.message}">
			<div class="alert alert-info">
			<div class="message" role="status">${flash.message}</div>
			</div>
			</g:if>
   
		
			<div class="container-fluid">
		
			<div class="span14">
			<div class="hero-unit">
	
		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span2">
		</div>
		
	<h2>Resident Report</h2>
	
	<table border="0" cellpadding="0">
	<td>
			<b>Resident Number:</b>		${residentInstance?.residentNumber}<br>
			<b>Resident Name:</b>		${residentInstance?.residentName}
			<b>Address:</b>					${residentInstance?.address}<br>
			<b>Birthdate:</b>					<g:formatDate format="MM-dd-yyyy" date="${residentInstance?.birthDate}" /><br>
			<b>Relationship Status:</b>					${residentInstance?.status}<br>
	</td>
	<td>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <b>Household Role:</b>					${residentInstance?.householdRole}<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Religion:</b>					${residentInstance?.religion}<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Educational Attainment</b>	${residentInstance?.educationalAttainment}<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Employment Status:</b>			${residentInstance?.employmentStatus}<br>
	</td>
	</table>
	
	<h2> Evaluation of Records</h2>
	<g:jasperReport  jasper="evaluation_of_records" controller="report" action="printReport" format="PDF" name="(PDF)" >  Download
		<g:hiddenField name="residentId" value="${residentInstance?.id}"/>
	</g:jasperReport>
		
	<br>
	<br>
	<p>
	
		</div>
		</body>
	</center>
</html>