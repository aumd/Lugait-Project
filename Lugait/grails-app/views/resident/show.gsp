<%@ page import="lugait.Resident" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resident.label', default: 'Resident')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>

	<body>
	<br><br>

		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span1">
		</div>

		<div class="span11">

		<div align="center">	
		<ul class="nav nav-pills" style="border: solid 0px #0000FF;">


		<!--FOR SEARCH-->

		<li>
		<a class="btn btn-small btn-info" href="http://localhost:8080/Lugait/resident/list">
		<i class="icon-info-sign"></i> Resident Listing</a>
		</li>
		<div align="right"
		<fieldset class="buttons">
					<g:form action="searchResident" controller="resident" class="">
					<g:textField name="residentNumber" value="${params.input}" size="20" placeholder="Search Resident ID No."/>
					<g:submitButton name="search" class="buttons" value="Search" />
					</g:form>
			</fieldset>
		</div>
		<!-- SEARCH ENDS HERE--->
		
		<center><h1> Resident's Information</h1></center>

		<div class="container-fluid">

			<div class="span15">
			<div class="hero-unit">

		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span0">
		</div>

		<g:if test="${flash.message}">
			<div class="alert alert-info">
			<div class="message" role="status">${flash.message}</div>
			</div>
			</g:if>

		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span1">

		</div>
		<!--
		<div id="show-resident" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list resident">
		-->
		
		
		<table border="0" cellpadding="0">
	<td>
			<b>Resident Number:</b>			<g:fieldValue bean="${residentInstance}" field="residentNumber"/><br>
			<b>Precint Number:</b>			<g:fieldValue bean="${residentInstance}" field="precinctNumber"/><br>
			<b>Resident Name:</b>		<g:fieldValue bean="${residentInstance}" field="residentName"/><br>
			<b>Address:</b>				<g:fieldValue bean="${residentInstance}" field="address"/><br>
			
	</td>
	<td>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Household Role:</b> 	<g:fieldValue bean="${residentInstance}" field="householdRole"/><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Age:</b>				<g:fieldValue bean="${residentInstance}" field="age"/><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Birthdate:</b>	<g:formatDate birthDate="${residentInstance?.birthDate}" format="MMM-dd-yyyy"/><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Religion:</b>			<g:fieldValue bean="${residentInstance}" field="religion"/><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Status:</b>		<g:fieldValue bean="${residentInstance}" field="status"/><br
	</td>
	</table>

	<table border="0" cellpadding="0">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<td>
	
		
			<b>Spouse Name:</b>		<g:fieldValue bean="${residentInstance}" field="residentSpouseName"/><br>
			<b>Children:</b>			<g:fieldValue bean="${residentInstance}" field="residentChildName"/><br> 	
			<b>Educational Attainment:</b>		<g:fieldValue bean="${residentInstance}" field="educationalAttainment"/><br>
			<b>Means of Living:</b>		<g:fieldValue bean="${residentInstance}" field="meansOfLiving"/><br>
			<b>Employment Status:</b> 	<g:fieldValue bean="${residentInstance}" field="employmentStatus"/><br>
	</td>
	<td>
				 <b>Monthly Income:</b> 	<g:fieldValue bean="${residentInstance}" field="monthlyIncome"/><br>
				<b>Environmental Sanitation:</b>	<g:formatDate birthDate="${residentInstance}" field="environmentalSanitation"/><br>
				<b>Means of Drinking Water:</b>			<g:fieldValue bean="${residentInstance}" field="meansOfDrinkingWater"/><br>
				<b>Disabilities:</b>		<g:fieldValue bean="${residentInstance}" field="disabilities"/><br>
				<b>Medical History:</b>		<g:fieldValue bean="${residentInstance}" field="medHistory"/><br>
	</td>
	</table>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
			<div align="right">
			<ol>	
			<g:link class="btn " controller="report" action="showReport" id="${residentInstance?.id}">Resident Reports</g:link></br>
			
			</ol>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${residentInstance?.id}" />
					<g:link class="btn btn" action="edit" id="${residentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
