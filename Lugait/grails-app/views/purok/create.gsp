<%@ page import="lugait.Purok" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'purok.label', default: 'Purok')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	
	<body>
	
		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span2">
		</div>
		
		<div class="span8">
		
		<div id="create-purok" class="content scaffold-create" role="main">
			<center><h2>Purok</h2></center>
		
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<g:hasErrors bean="${purokInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${purokInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
	</div>
	</body>
</html>
