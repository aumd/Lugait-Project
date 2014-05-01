
<%@ page import="lugait.Purok" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'purok.label', default: 'Purok')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<br><br>
	
		<div align="right">	
		<ul class="nav nav-pills" style="border: solid 0px #d3d3d3;">
	
		<li class="active"><a href="http://localhost:8080/gradAdvising/purok/list">Purok List</a></li>
		
			<g:if test="${flash.message}">
			<div class="alert alert-info">
			<div class="message" role="status">${flash.message}</div>
			</div>
			</g:if>
   
		
			<div class="container-fluid">
		
			<div class="span8">
			<div class="hero-unit">
			
				<!-- <h3> Purok Info</h3> -->
		
		<div id="show-purok" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
						
				<g:if test="${purokInstance?.purok}">
				<li class="fieldcontain">
					<span id="purok-label" class="property-label"><g:message code="purok.label" default="Purok" /></span>
					
						<span class="property-value" aria-labelledby="purok-label"><g:fieldValue bean="${purokInstance}" field="purok"/></span>
					
				</li>
				</g:if>
		
			
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${purokInstance?.id}" />
					<g:link class="btn" action="edit" id="${purokInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
