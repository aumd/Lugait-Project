<%@ page import="lugait.Purok" %>
<!DOCTYPE html>

<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'purok.label', default: 'Purok')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
		
		<li>
		<a class="btn btn-small btn-info" href="http://localhost:8080/lugait/Purok/create">
		<i class="icon-info-sign"></i> Add Purok</a>
		</li>
		
		<div id="list-purok" class="content scaffold-list" role="main">
			<center><h3>Purok</h3></center>
			
			<g:if test="${flash.message}">
			<div class="alert alert-info">
				<div class="message" role="status">${flash.message}</div>
			</div>
			</g:if>
			
			<table class="table table-bordered">
				<thead>
					<tr>
						<g:sortableColumn property="purok" title="${message(code: 'purok.label', default: 'Purok')}" />
						
					</tr>
				</thead>
				
				<tbody>
				<g:each in="${purokInstanceList}" status="i" var="purokInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td>${fieldValue(bean: purokInstance, field: "purok")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<div class="pagination">
				<g:paginate total="${purokInstanceTotal}" />
			</div>
			
		</div>
	</body>
</html>
