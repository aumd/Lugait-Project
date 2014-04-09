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
		<div class="span2">
		</div>

		<div class="span8">

		<div align="left">	
		<ul class="nav nav-pills" style="border: solid 0px #0000FF;">


		<!--FOR SEARCH-->

		<li>
		<a class="btn btn-small btn-info" href="http://localhost:8080/Lugait/resident/list">
		<i class="icon-info-sign"></i> Resident Listing</a>
		</li>

		<fieldset align="right" class="buttons">
					<g:form action="searchResident" controller="resident" class="">
					<g:textField name="residentNumber" value="${params.input}" size="20" placeholder="Search Resident ID No."/>
					<g:submitButton name="search" class="buttons" value="Search" />
					</g:form>
			</fieldset>

		<!-- SEARCH ENDS HERE--->

		<div class="container-fluid">

			<div class="span12">
			<div class="hero-unit">

		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span2">
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
		<div id="show-resident" class="content scaffold-show" role="main">
			<h2><g:message code="default.show.label" args="[entityName]" /></h2>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list resident">
			
				<g:if test="${residentInstance?.residentFirstName}">
				<li class="fieldcontain">
					<span id="residentFirstName-label" class="property-label"><g:message code="resident.residentFirstName.label" default="Resident First Name:" /></span>
					
						<span class="property-value" aria-labelledby="residentFirstName-label"><g:fieldValue bean="${residentInstance}" field="residentFirstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.residentMiddleName}">
				<li class="fieldcontain">
					<span id="residentMiddleName-label" class="property-label"><g:message code="resident.residentMiddleName.label" default="Resident Middle Name:" /></span>
					
						<span class="property-value" aria-labelledby="residentMiddleName-label"><g:fieldValue bean="${residentInstance}" field="residentMiddleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.residentLastName}">
				<li class="fieldcontain">
					<span id="residentLastName-label" class="property-label"><g:message code="resident.residentLastName.label" default="Resident Last Name:" /></span>
					
						<span class="property-value" aria-labelledby="residentLastName-label"><g:fieldValue bean="${residentInstance}" field="residentLastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.residentNumber}">
				<li class="fieldcontain">
					<span id="residentNumber-label" class="property-label"><g:message code="resident.residentNumber.label" default="Resident Number:" /></span>
					
						<span class="property-value" aria-labelledby="residentNumber-label"><g:fieldValue bean="${residentInstance}" field="residentNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.householdRole}">
				<li class="fieldcontain">
					<span id="householdRole-label" class="property-label"><g:message code="resident.householdRole.label" default="Household Role:" /></span>
					
						<span class="property-value" aria-labelledby="householdRole-label"><g:fieldValue bean="${residentInstance}" field="householdRole"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="resident.birthDate.label" default="Birth Date:" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate format="MM-dd-yyyy" date="${residentInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="resident.address.label" default="Address:" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${residentInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.religion}">
				<li class="fieldcontain">
					<span id="religion-label" class="property-label"><g:message code="resident.religion.label" default="Religion:" /></span>
					
						<span class="property-value" aria-labelledby="religion-label"><g:fieldValue bean="${residentInstance}" field="religion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.precinctNumber}">
				<li class="fieldcontain">
					<span id="precinctNumber-label" class="property-label"><g:message code="resident.precinctNumber.label" default="Precinct Number:" /></span>
					
						<span class="property-value" aria-labelledby="precinctNumber-label"><g:fieldValue bean="${residentInstance}" field="precinctNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="resident.status.label" default="Status:" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${residentInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.residentSpouseFirstName}">
				<li class="fieldcontain">
					<span id="residentSpouseFirstName-label" class="property-label"><g:message code="resident.residentSpouseFirstName.label" default="Resident Spouse First Name:" /></span>
					
						<span class="property-value" aria-labelledby="residentSpouseFirstName-label"><g:fieldValue bean="${residentInstance}" field="residentSpouseFirstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.residentSpouseMiddleName}">
				<li class="fieldcontain">
					<span id="residentSpouseMiddleName-label" class="property-label"><g:message code="resident.residentSpouseMiddleName.label" default="Resident Spouse Middle Name:" /></span>
					
						<span class="property-value" aria-labelledby="residentSpouseMiddleName-label"><g:fieldValue bean="${residentInstance}" field="residentSpouseMiddleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.residentSpouseLastName}">
				<li class="fieldcontain">
					<span id="residentSpouseLastName-label" class="property-label"><g:message code="resident.residentSpouseLastName.label" default="Resident Spouse Last Name:" /></span>
					
						<span class="property-value" aria-labelledby="residentSpouseLastName-label"><g:fieldValue bean="${residentInstance}" field="residentSpouseLastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.child}">
				<li class="fieldcontain">
					<span id="child-label" class="property-label"><g:message code="resident.child.label" default="Child:" /></span>
					
						<span class="property-value" aria-labelledby="child-label"><g:fieldValue bean="${residentInstance}" field="child"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.educationalAttainment}">
				<li class="fieldcontain">
					<span id="educationalAttainment-label" class="property-label"><g:message code="resident.educationalAttainment.label" default="Educational Attainment:" /></span>
					
						<span class="property-value" aria-labelledby="educationalAttainment-label"><g:fieldValue bean="${residentInstance}" field="educationalAttainment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.meansOfLiving}">
				<li class="fieldcontain">
					<span id="meansOfLiving-label" class="property-label"><g:message code="resident.meansOfLiving.label" default="Means Of Living:" /></span>
					
						<span class="property-value" aria-labelledby="meansOfLiving-label"><g:fieldValue bean="${residentInstance}" field="meansOfLiving"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.employmentStatus}">
				<li class="fieldcontain">
					<span id="employmentStatus-label" class="property-label"><g:message code="resident.employmentStatus.label" default="Employment Status:" /></span>
					
						<span class="property-value" aria-labelledby="employmentStatus-label"><g:fieldValue bean="${residentInstance}" field="employmentStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.monthlyIncome}">
				<li class="fieldcontain">
					<span id="monthlyIncome-label" class="property-label"><g:message code="resident.monthlyIncome.label" default="Monthly Income:" /></span>
					
						<span class="property-value" aria-labelledby="monthlyIncome-label"><g:fieldValue bean="${residentInstance}" field="monthlyIncome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.environmentalSanitation}">
				<li class="fieldcontain">
					<span id="environmentalSanitation-label" class="property-label"><g:message code="resident.environmentalSanitation.label" default="Environmental Sanitation:" /></span>
					
						<span class="property-value" aria-labelledby="environmentalSanitation-label"><g:fieldValue bean="${residentInstance}" field="environmentalSanitation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.meansOfDrinkingWater}">
				<li class="fieldcontain">
					<span id="meansOfDrinkingWater-label" class="property-label"><g:message code="resident.meansOfDrinkingWater.label" default="Means Of Drinking Water:" /></span>
					
						<span class="property-value" aria-labelledby="meansOfDrinkingWater-label"><g:fieldValue bean="${residentInstance}" field="meansOfDrinkingWater"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.disabilities}">
				<li class="fieldcontain">
					<span id="disabilities-label" class="property-label"><g:message code="resident.disabilities.label" default="Disabilities:" /></span>
					
						<span class="property-value" aria-labelledby="disabilities-label"><g:fieldValue bean="${residentInstance}" field="disabilities"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.medHistory}">
				<li class="fieldcontain">
					<span id="medHistory-label" class="property-label"><g:message code="resident.medHistory.label" default="Medical History:" /></span>
					
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
