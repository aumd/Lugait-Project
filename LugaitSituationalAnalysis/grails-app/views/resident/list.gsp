
<%@ page import="LugaitSituationalAnalysis.Resident" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resident.label', default: 'Resident')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-resident" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-resident" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'resident.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="birthdate" title="${message(code: 'resident.birthdate.label', default: 'Birthdate')}" />
					
						<g:sortableColumn property="children" title="${message(code: 'resident.children.label', default: 'Children')}" />
					
						<g:sortableColumn property="disablities" title="${message(code: 'resident.disablities.label', default: 'Disablities')}" />
					
						<g:sortableColumn property="employmentStatus" title="${message(code: 'resident.employmentStatus.label', default: 'Employment Status')}" />
					
						<g:sortableColumn property="household" title="${message(code: 'resident.household.label', default: 'Household')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${residentInstanceList}" status="i" var="residentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${residentInstance.id}">${fieldValue(bean: residentInstance, field: "address")}</g:link></td>
					
						<td><g:formatDate date="${residentInstance.birthdate}" /></td>
					
						<td>${fieldValue(bean: residentInstance, field: "children")}</td>
					
						<td>${fieldValue(bean: residentInstance, field: "disablities")}</td>
					
						<td>${fieldValue(bean: residentInstance, field: "employmentStatus")}</td>
					
						<td>${fieldValue(bean: residentInstance, field: "household")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${residentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
