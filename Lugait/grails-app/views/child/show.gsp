
<%@ page import="lugait.Child" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'child.label', default: 'Child')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-child" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-child" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list child">
			
				<g:if test="${childInstance?.childFirstName}">
				<li class="fieldcontain">
					<span id="childFirstName-label" class="property-label"><g:message code="child.childFirstName.label" default="Child First Name" /></span>
					
						<span class="property-value" aria-labelledby="childFirstName-label"><g:fieldValue bean="${childInstance}" field="childFirstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${childInstance?.childMiddleName}">
				<li class="fieldcontain">
					<span id="childMiddleName-label" class="property-label"><g:message code="child.childMiddleName.label" default="Child Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="childMiddleName-label"><g:fieldValue bean="${childInstance}" field="childMiddleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${childInstance?.childLastName}">
				<li class="fieldcontain">
					<span id="childLastName-label" class="property-label"><g:message code="child.childLastName.label" default="Child Last Name" /></span>
					
						<span class="property-value" aria-labelledby="childLastName-label"><g:fieldValue bean="${childInstance}" field="childLastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${childInstance?.childGender}">
				<li class="fieldcontain">
					<span id="childGender-label" class="property-label"><g:message code="child.childGender.label" default="Child Gender" /></span>
					
						<span class="property-value" aria-labelledby="childGender-label"><g:fieldValue bean="${childInstance}" field="childGender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${childInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="child.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${childInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${childInstance?.resident}">
				<li class="fieldcontain">
					<span id="resident-label" class="property-label"><g:message code="child.resident.label" default="Resident" /></span>
					
						<span class="property-value" aria-labelledby="resident-label"><g:link controller="resident" action="show" id="${childInstance?.resident?.id}">${childInstance?.resident?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${childInstance?.id}" />
					<g:link class="edit" action="edit" id="${childInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
