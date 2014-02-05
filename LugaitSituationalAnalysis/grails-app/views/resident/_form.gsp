<%@ page import="LugaitSituationalAnalysis.Resident" %>



<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="resident.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${residentInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'birthdate', 'error')} required">
	<label for="birthdate">
		<g:message code="resident.birthdate.label" default="Birthdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthdate" precision="day"  value="${residentInstance?.birthdate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'children', 'error')} ">
	<label for="children">
		<g:message code="resident.children.label" default="Children" />
		
	</label>
	<g:textField name="children" value="${residentInstance?.children}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'disablities', 'error')} ">
	<label for="disablities">
		<g:message code="resident.disablities.label" default="Disablities" />
		
	</label>
	<g:textField name="disablities" value="${residentInstance?.disablities}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'employmentStatus', 'error')} ">
	<label for="employmentStatus">
		<g:message code="resident.employmentStatus.label" default="Employment Status" />
		
	</label>
	<g:textField name="employmentStatus" value="${residentInstance?.employmentStatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'household', 'error')} ">
	<label for="household">
		<g:message code="resident.household.label" default="Household" />
		
	</label>
	<g:textField name="household" value="${residentInstance?.household}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'medHistory', 'error')} ">
	<label for="medHistory">
		<g:message code="resident.medHistory.label" default="Med History" />
		
	</label>
	<g:textField name="medHistory" value="${residentInstance?.medHistory}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'religion', 'error')} ">
	<label for="religion">
		<g:message code="resident.religion.label" default="Religion" />
		
	</label>
	<g:textField name="religion" value="${residentInstance?.religion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentName', 'error')} ">
	<label for="residentName">
		<g:message code="resident.residentName.label" default="Resident Name" />
		
	</label>
	<g:textField name="residentName" value="${residentInstance?.residentName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentNumber', 'error')} ">
	<label for="residentNumber">
		<g:message code="resident.residentNumber.label" default="Resident Number" />
		
	</label>
	<g:textField name="residentNumber" value="${residentInstance?.residentNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'spouse', 'error')} ">
	<label for="spouse">
		<g:message code="resident.spouse.label" default="Spouse" />
		
	</label>
	<g:textField name="spouse" value="${residentInstance?.spouse}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="resident.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${residentInstance?.status}"/>
</div>

