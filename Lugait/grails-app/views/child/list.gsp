
<%@ page import="lugait.Child" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'child.label', default: 'Child')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-child" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-child" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="childFirstName" title="${message(code: 'child.childFirstName.label', default: 'Child First Name')}" />
					
						<g:sortableColumn property="childMiddleName" title="${message(code: 'child.childMiddleName.label', default: 'Child Middle Name')}" />
					
						<g:sortableColumn property="childLastName" title="${message(code: 'child.childLastName.label', default: 'Child Last Name')}" />
					
						<g:sortableColumn property="childGender" title="${message(code: 'child.childGender.label', default: 'Child Gender')}" />
					
						<g:sortableColumn property="birthDate" title="${message(code: 'child.birthDate.label', default: 'Birth Date')}" />
					
						<th><g:message code="child.resident.label" default="Resident" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${childInstanceList}" status="i" var="childInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${childInstance.id}">${fieldValue(bean: childInstance, field: "childFirstName")}</g:link></td>
					
						<td>${fieldValue(bean: childInstance, field: "childMiddleName")}</td>
					
						<td>${fieldValue(bean: childInstance, field: "childLastName")}</td>
					
						<td>${fieldValue(bean: childInstance, field: "childGender")}</td>
					
						<td><g:formatDate date="${childInstance.birthDate}" /></td>
					
						<td>${fieldValue(bean: childInstance, field: "resident")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${childInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
