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
	
	<div class="container-fluid">
		<div class="row-fluid">
		<div class="span4">
		</div>

		<div class="span10">

		<div align="center">	
			<ul class="nav nav-pills" style="border: solid 0px #0000FF;">
			<li class="active"><a href="http://localhost:8080/Lugait/resident/list">Resident List</a></li>
			</ul>
		<g:if test="${flash.message}">
			<div class="alert alert-info">
			<div class="message" role="status">${flash.message}</div>
			</div>
			</g:if>
   	<h2>Resident's Report</h2>
		<div align="center">
			<div class="container-fluid">
		
			<div class="span12">
			<div class="hero-unit">
	
		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span2">
		</div>
		
	
	<table border="0" cellpadding="0">
	<td>
			<b>Resident Number:</b>		${residentInstance?.residentNumber}<br>
			<b>Resident Name:</b>		${residentInstance?.residentName}<br>
			<b>Address:</b>					${residentInstance?.address}<br>
			<b>Birthdate:</b>					${residentInstance?.birthMonth}-${residentInstance?.birthDate}-${residentInstance?.birthYear}<br>
			<b>Age:</b>					${residentInstance?.age}<br>
	</td>
	<td>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Relationship Status:</b>					${residentInstance?.status}<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <b>Household Role:</b>					${residentInstance?.householdRole}<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Religion:</b>					${residentInstance?.religion}<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Educational Attainment:</b>	${residentInstance?.educationalAttainment}<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Employment Status:</b>			${residentInstance?.employmentStatus}<br>
	</td>
	</table>
		
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	<div align="center">
	<g:jasperReport  jasper="evaluation_of_records" controller="report" action="printReport" format="PDF" name="(PDF)" >  Download
		<g:hiddenField name="residentId" value="${residentInstance?.id}"/>
	</g:jasperReport>
	</div>	
	<br>
	<br>
	<p>
	
		</div>
		</div>
		</body>
	</center>
</html>