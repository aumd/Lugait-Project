
<%@ page import="lugait.Resident" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resident.label', default: 'Resident')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-resident" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-resident" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list resident">
			
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
			
				<g:if test="${residentInstance?.residentName}">
				<li class="fieldcontain">
					<span id="residentName-label" class="property-label"><g:message code="resident.residentName.label" default="Resident Name" /></span>
					
						<span class="property-value" aria-labelledby="residentName-label"><g:fieldValue bean="${residentInstance}" field="residentName"/></span>
					
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
			
				<g:if test="${residentInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="resident.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${residentInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.spouse}">
				<li class="fieldcontain">
					<span id="spouse-label" class="property-label"><g:message code="resident.spouse.label" default="Spouse" /></span>
					
						<span class="property-value" aria-labelledby="spouse-label"><g:fieldValue bean="${residentInstance}" field="spouse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentInstance?.children}">
				<li class="fieldcontain">
					<span id="children-label" class="property-label"><g:message code="resident.children.label" default="Children" /></span>
					
						<span class="property-value" aria-labelledby="children-label"><g:fieldValue bean="${residentInstance}" field="children"/></span>
					
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
