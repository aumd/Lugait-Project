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

		<div class="span10">

		<div align="left">	
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

			<div class="span12">
			<div class="hero-unit">

		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span3">
		</div>

		<g:if test="${flash.message}">
			<div class="alert alert-info">
			<div class="message" role="status">${flash.message}</div>
			</div>
			</g:if>

		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span2">

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
			<b>Address:</b>		<g:fieldValue bean="${residentInstance}" field="address"/><br>
			<b>Household Role:</b> 	<g:fieldValue bean="${residentInstance}" field="householdRole"/><br>
	</td>
	<td>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 	<b>Birthdate:</b>	<g:formatDate birthDate="${residentInstance?.birthDate}" format="MMM-dd-yyyy"/><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Religion:</b>			<g:fieldValue bean="${residentInstance}" field="religion"/><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Status:</b>		<g:fieldValue bean="${residentInstance}" field="status"/><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<b>Spouse Name:</b>		<g:fieldValue bean="${residentInstance}" field="residentSpouseName"/><br>
	</td>
	</table>
		
		
			<!--
				<g:if test="${residentInstance?.residentName}">
				<li class="fieldcontain">
					<span id="residentName-label" class="property-label"><g:message code="resident.residentName.label" default="Resident Name" /></span>
					
						<span class="property-value" aria-labelledby="residentName-label"><g:fieldValue bean="${residentInstance}" field="residentName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.residentNumber}">
				<li class="fieldcontain">
					<span id="residentNumber-label" class="property-label"><g:message code="resident.residentNumber.label" default="Resident Number" /></span>
					
						<span class="property-value" aria-labelledby="residentNumber-label"><g:fieldValue bean="${residentInstance}" field="residentNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.householdRole}">
				<li class="fieldcontain">
					<span id="householdRole-label" class="property-label"><g:message code="resident.householdRole.label" default="Household Role" /></span>
					
						<span class="property-value" aria-labelledby="householdRole-label"><g:fieldValue bean="${residentInstance}" field="householdRole"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="resident.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${residentInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="resident.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${residentInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.religion}">
				<li class="fieldcontain">
					<span id="religion-label" class="property-label"><g:message code="resident.religion.label" default="Religion" /></span>
					
						<span class="property-value" aria-labelledby="religion-label"><g:fieldValue bean="${residentInstance}" field="religion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.precinctNumber}">
				<li class="fieldcontain">
					<span id="precinctNumber-label" class="property-label"><g:message code="resident.precinctNumber.label" default="Precinct Number" /></span>
					
						<span class="property-value" aria-labelledby="precinctNumber-label"><g:fieldValue bean="${residentInstance}" field="precinctNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="resident.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${residentInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.residentSpouseName}">
				<li class="fieldcontain">
					<span id="residentSpouseName-label" class="property-label"><g:message code="resident.residentSpouseName.label" default="Resident Spouse Name" /></span>
					
						<span class="property-value" aria-labelledby="residentSpouseName-label"><g:fieldValue bean="${residentInstance}" field="residentSpouseName"/></span>
					
				</li>
				</g:if> -->
				
				<g:if test="${residentInstance?.residentChildName}">
				<li class="fieldcontain">
					<span id="residentChildName-label" class="property-label"><g:message code="resident.residentChildName.label" default="Resident Child/s Name" /></span>
					
						<span class="property-value" aria-labelledby="residentChildName-label"><g:fieldValue bean="${residentInstance}" field="residentChildName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.educationalAttainment}">
				<li class="fieldcontain">
					<span id="educationalAttainment-label" class="property-label"><g:message code="resident.educationalAttainment.label" default="Educational Attainment" /></span>
					
						<span class="property-value" aria-labelledby="educationalAttainment-label"><g:fieldValue bean="${residentInstance}" field="educationalAttainment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.meansOfLiving}">
				<li class="fieldcontain">
					<span id="meansOfLiving-label" class="property-label"><g:message code="resident.meansOfLiving.label" default="Means Of Living" /></span>
					
						<span class="property-value" aria-labelledby="meansOfLiving-label"><g:fieldValue bean="${residentInstance}" field="meansOfLiving"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.employmentStatus}">
				<li class="fieldcontain">
					<span id="employmentStatus-label" class="property-label"><g:message code="resident.employmentStatus.label" default="Employment Status" /></span>
					
						<span class="property-value" aria-labelledby="employmentStatus-label"><g:fieldValue bean="${residentInstance}" field="employmentStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.monthlyIncome}">
				<li class="fieldcontain">
					<span id="monthlyIncome-label" class="property-label"><g:message code="resident.monthlyIncome.label" default="Monthly Income" /></span>
					
						<span class="property-value" aria-labelledby="monthlyIncome-label"><g:fieldValue bean="${residentInstance}" field="monthlyIncome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.environmentalSanitation}">
				<li class="fieldcontain">
					<span id="environmentalSanitation-label" class="property-label"><g:message code="resident.environmentalSanitation.label" default="Environmental Sanitation" /></span>
					
						<span class="property-value" aria-labelledby="environmentalSanitation-label"><g:fieldValue bean="${residentInstance}" field="environmentalSanitation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.meansOfDrinkingWater}">
				<li class="fieldcontain">
					<span id="meansOfDrinkingWater-label" class="property-label"><g:message code="resident.meansOfDrinkingWater.label" default="Means Of Drinking Water" /></span>
					
						<span class="property-value" aria-labelledby="meansOfDrinkingWater-label"><g:fieldValue bean="${residentInstance}" field="meansOfDrinkingWater"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.disabilities}">
				<li class="fieldcontain">
					<span id="disabilities-label" class="property-label"><g:message code="resident.disabilities.label" default="Disabilities" /></span>
					
						<span class="property-value" aria-labelledby="disabilities-label"><g:fieldValue bean="${residentInstance}" field="disabilities"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.medHistory}">
				<li class="fieldcontain">
					<span id="medHistory-label" class="property-label"><g:message code="resident.medHistory.label" default="Med History" /></span>
					
						<span class="property-value" aria-labelledby="medHistory-label"><g:fieldValue bean="${residentInstance}" field="medHistory"/></span>
					
				</li>
				</g:if>
				
			<g:link class="btn" controller="report" action="showReport" id="${residentInstance?.id}">Resident Reports</g:link></br>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${residentInstance?.id}" />
					<g:link class="edit" action="edit" id="${residentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
