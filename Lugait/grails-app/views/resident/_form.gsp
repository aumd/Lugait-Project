<%@ page import="lugait.Resident" %>

<div class="container">  
<div class="row">  

	<div class="span4">
	
	<!-- Basic Information -->

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentNumber', 'error')} required">
	<label for="residentNumber">
		<g:message code="resident.residentNumber.label" default="Resident Number" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="residentNumber" placeholder ="01-Salimbal-0001" required="" value="${residentInstance?.residentNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'householdRole', 'error')} required">
	<label for="householdRole">
		<g:message code="resident.householdRole.label" default="Household Role" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="householdRole" from="${residentInstance.constraints.householdRole.inList}" required="" value="${residentInstance?.householdRole}" valueMessagePrefix="resident.householdRole"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentName', 'error')} required">
	<label for="residentName">
		<g:message code="resident.residentName.label" default="Resident Name" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="residentName" required="" placeholder="Last Name, First Name, Middle Name" value="${residentInstance?.residentName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="resident.birthDate.label" default="Birth Date" />
		<span class="required-indicator"></span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${residentInstance?.birthDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="resident.address.label" default="Address" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="address" required="" value="${residentInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'religion', 'error')} required">
	<label for="religion">
		<g:message code="resident.religion.label" default="Religion" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="religion" from="${residentInstance.constraints.religion.inList}" required="" value="${residentInstance?.religion}" valueMessagePrefix="resident.religion"/>
</div>

</div>

<!-- second column info -->

	<div class="span4">
	
<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="resident.status.label" default="Status" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="status" from="${residentInstance.constraints.status.inList}" required="" value="${residentInstance?.status}" valueMessagePrefix="resident.status"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'spouse', 'error')} ">
	<label for="spouse">
		<g:message code="resident.spouse.label" default="Spouse" />
	</label>
	<g:textField name="spouse" value="${residentInstance?.spouse}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'children', 'error')} ">
	<label for="children">
		<g:message code="resident.children.label" default="Children" />
	</label>
	<g:textField name="children" value="${residentInstance?.children}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'employmentStatus', 'error')} required">
	<label for="employmentStatus">
		<g:message code="resident.employmentStatus.label" default="Employment Status" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="employmentStatus" from="${residentInstance.constraints.employmentStatus.inList}" required="" value="${residentInstance?.employmentStatus}" valueMessagePrefix="resident.employmentStatus"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'monthlyIncome', 'error')} required">
	<label for="monthlyIncome">
		<g:message code="resident.monthlyIncome.label" default="Monthly Income" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="monthlyIncome" from="${residentInstance.constraints.monthlyIncome.inList}" required="" value="${residentInstance?.monthlyIncome}" valueMessagePrefix="resident.monthlyIncome"/>
</div>

</div>

<div class="span4">

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'meansOfLiving', 'error')} required">
	<label for="meansOfLiving">
		<g:message code="resident.meansOfLiving.label" default="House Situation" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="meansOfLiving" from="${residentInstance.constraints.meansOfLiving.inList}" required="" value="${residentInstance?.meansOfLiving}" valueMessagePrefix="resident.meansOfLiving"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'environmentalSanitation', 'error')} required">
	<label for="environmentalSanitation">
		<g:message code="resident.environmentalSanitation.label" default="Sanitation" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="environmentalSanitation" from="${residentInstance.constraints.environmentalSanitation.inList}" required="" value="${residentInstance?.environmentalSanitation}" valueMessagePrefix="resident.environmentalSanitation"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'meansOfDrinkingWater', 'error')} required">
	<label for="meansOfDrinkingWater">
		<g:message code="resident.meansOfDrinkingWater.label" default="Means Of Drinking Water" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="meansOfDrinkingWater" from="${residentInstance.constraints.meansOfDrinkingWater.inList}" required="" value="${residentInstance?.meansOfDrinkingWater}" valueMessagePrefix="resident.meansOfDrinkingWater"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'disabilities', 'error')} required">
	<label for="disabilities">
		<g:message code="resident.disabilities.label" default="Disabilities" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="disabilities" required="" value="${residentInstance?.disabilities}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'medHistory', 'error')} required">
	<label for="medHistory">
		<g:message code="resident.medHistory.label" default="Med History" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="medHistory" required="" value="${residentInstance?.medHistory}"/>
</div>

