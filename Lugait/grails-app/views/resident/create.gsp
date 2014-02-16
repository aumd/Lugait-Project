<%@ page import="lugait.Resident" %>
<!DOCTYPE html>
<html>

	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resident.label', default: 'Resident')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	
	<body>
	<br><br>
		
		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span2">
		</div>
		
		<div class="span8">
		
		<div align="right">
		<ul class="nav nav-pills" style="border: solid 0px #d3d3d3;">
		
		<!--FOR SEARCH-->
		
		<li>
		<a class="btn btn-small btn-info" href="http://localhost:8080/Lugait/resident/create">
		<i class="icon-info-sign"></i> Add Resident</a>
		</li>
		
		<fieldset class="buttons">
			
					<g:form action="searchResident" controller="student" class="">
					<g:textField name="idNumber" value="${params.input}" size="20" placeholder="Search Resident ID No."/>
					<g:submitButton name="search" class="buttons" value="Search" />
					</g:form>
			</fieldset>
		
		<!-- SEARCH ENDS HERE--->
		
			<h3><center>Resident Information Sheet</center></h3>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<g:hasErrors bean="${residentInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${residentInstance}" var="error">
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
