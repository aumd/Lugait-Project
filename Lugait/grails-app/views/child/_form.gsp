<%@ page import="lugait.Child" %>



<div class="fieldcontain ${hasErrors(bean: childInstance, field: 'childFirstName', 'error')} required">
	<label for="childFirstName">
		<g:message code="child.childFirstName.label" default="Child First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="childFirstName" required="" value="${childInstance?.childFirstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: childInstance, field: 'childMiddleName', 'error')} required">
	<label for="childMiddleName">
		<g:message code="child.childMiddleName.label" default="Child Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="childMiddleName" required="" value="${childInstance?.childMiddleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: childInstance, field: 'childLastName', 'error')} required">
	<label for="childLastName">
		<g:message code="child.childLastName.label" default="Child Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="childLastName" required="" value="${childInstance?.childLastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: childInstance, field: 'childGender', 'error')} required">
	<label for="childGender">
		<g:message code="child.childGender.label" default="Child Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="childGender" from="${childInstance.constraints.childGender.inList}" required="" value="${childInstance?.childGender}" valueMessagePrefix="child.childGender"/>
</div>

<div class="fieldcontain ${hasErrors(bean: childInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="child.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${childInstance?.birthDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: childInstance, field: 'resident', 'error')} required">
	<label for="resident">
		<g:message code="child.resident.label" default="Resident" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="resident" name="resident.id" from="${lugait.Resident.list()}" optionKey="id" required="" value="${childInstance?.resident?.id}" class="many-to-one"/>
</div>

