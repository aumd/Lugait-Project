<%@ page import="lugait.Resident" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resident.label', default: 'Resident')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	
	<body>
	<<br><br>
		
		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span2">
		</div>
		
		<div class="span8">
	
		<div align="right">	
		<ul class="nav nav-pills" style="border: solid 0px #d3d3d3;">
		
		<!--FOR SEARCH-->
		
		<li>
		<a class="btn btn-small btn-info" href="http://localhost:8080/Lugait/resident/list">
		<i class="icon-info-sign"></i> Resident Listing</a>
		</li>
		
		<fieldset class="buttons">
					<g:form action="searchResident" controller="student" class="">
					<g:textField name="idNumber" value="${params.input}" size="20" placeholder="Search Resident ID No."/>
					<g:submitButton name="search" class="buttons" value="Search" />
					</g:form>
			</fieldset>
		
		<!-- SEARCH ENDS HERE--->
		
		<div id="edit-resident" class="content scaffold-edit" role="main">
			<h3><center>Update Resident Information</center></h3>
		
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
			<g:form method="post" >
				<g:hiddenField name="id" value="${residentInstance?.id}" />
				<g:hiddenField name="version" value="${residentInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
