<%@ page import="lugait.Resident" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resident.label', default: 'Resident')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<br><br>

		<div class="container-fluid">
		<div class="row-fluid">
		<div class="span1">
		</div>

		<div class="span10">

		<div align="right">	
		<ul class="nav nav-pills" style="border: solid 0px #d3d3d3;">

		<!--FOR SEARCH-->

		<li>
		<a class="btn btn-small btn-info" href="http://localhost:8080/Lugait/resident/create">
		<i class="icon-info-sign"></i> Add Resident</a>
		</li>

		<fieldset class="">
					<g:form action="searchResident" controller="resident" class="">
					<g:textField name="residentNumber" value="${params.input}" size="20" placeholder="Search Resident ID No. and Age"/>
					<g:submitButton name="search" button class="btn btn-default" value="Search" />
					</g:form>
			</fieldset>

		<!-- SEARCH ENDS HERE--->
		
		<!-- SEARCH FOR PUROK -->
		<fieldset class="">
					<g:form action="searchResident" controller="resident" class="">
					<g:select name="residentNumber" value="${params.input}" size="1" from="${["-Please select Purok-", "Purok Andres Bonifacio", "Purok Mabini", "Purok Macao", "Purok Masilakon 1", "Purok Masilakon 2", "Purok Mauswagon", "Purok Rizal", "Purok Salimbal"]}"/>
					<g:submitButton name="search" button class="btn btn-default" value="Search" />
					</g:form>
		</fieldset>
		<!-- END SEARCH FOR PUROK -->
		
		<!--  -->
		<fieldset class="">
			<g:form action="searchAboveTeen" controller="resident" class="">
				<input type="submit" class="btn btn-default btn-medium" value="View Resident Above 18">
			</g:form>
		</fieldset>
		<!--  -->

		</div>
		<div id="list-resident" class="content scaffold-list" role="main">
			<center><h1><g:message code="default.list.label" args="[entityName]" /></h1></center>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
				<table class="table table-bordered">
					<tr>

					<g:sortableColumn property="purok" title="${message(code: 'resident.purok.label', default: 'Purok')}" />
					
						<g:sortableColumn property="residentNumber" title="${message(code: 'resident.residentNumber.label', default: 'Resident Number')}" />

						<g:sortableColumn property="residentLastName" title="${message(code: 'resident.residentLastName.label', default: 'Resident Name')}" />
						
						<g:sortableColumn property="householdRole" title="${message(code: 'resident.householdRole.label', default: 'Household Role')}" />

						
						<g:sortableColumn property="age" title="${message(code: 'resident.age.label', default: 'Age')}" />

						<g:sortableColumn property="birthDate" title="${message(code: 'resident.birthDate.label', default: 'Birth Date')}" />

						<g:sortableColumn property="address" title="${message(code: 'resident.address.label', default: 'Address')}" />

						<g:sortableColumn property="religion" title="${message(code: 'resident.religion.label', default: 'Religion')}" />

					</tr>
				</thead>

				<tbody>
				<g:each in="${requests}" var="residentInstance">
					<tr>
					
						<td><g:link action="show" id="${residentInstance.id}">${residentInstance.purok}</g:link></td>
					
						<td><g:link action="show" id="${residentInstance.id}">${residentInstance.resident_number}</g:link></td>
						
						<td>${residentInstance.resident_name}</td>

						<td>${residentInstance.household_role}</td>
						
						<td>${residentInstance.age}</td>

						<td><g:formatDate format="MM-dd-yyyy" date="${residentInstance.birth_date}" /></td>

						<td>${residentInstance.address}</td>

						<td>${residentInstance.religion}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
	</body>
</html>