<%@ page import="lugait.Resident" %>

<div class="container">  
<div class="row">  

	<div class="span12">
	<!-- Basic Information -->
	
	<div class="span6">
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentNumber', 'error')} required">
	<label for="residentNumber">
	<g:message code="resident.residentNumber.label" default="Resident Number:" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="residentNumber" required="" value="${residentInstance?.residentNumber}"/>
	</div>
		
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'precinctNumber', 'error')} required">
	<label for="precinctNumber">
		<g:message code="resident.precinctNumber.label" default="Precinct Number:" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="precinctNumber" required="" value="${residentInstance?.precinctNumber}"/>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentFirstName', 'error')} required">
	<label for="residentName">
	<g:message code="resident.residentName.label" default="Resident Name:" />
		<span class="required-indicator"></span>
	</label> 
	<g:textField name="residentName" required="" placeholder="Last name, First name M.I." value="${residentInstance?.residentName}"/>
	</div>
	
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'address', 'error')} required">
	<label for="address">
	<g:message code="resident.address.label" default="Address:" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="address" required="" value="${residentInstance?.address}"/>
	</div>
	
	</div>
	
	<div class="span5">
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'householdRole', 'error')} required">
	<label for="householdRole">
		<g:message code="resident.householdRole.label" default="Household Role:" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="householdRole" from="${residentInstance.constraints.householdRole.inList}" required="" value="${residentInstance?.householdRole}" valueMessagePrefix="resident.householdRole"/>
	</div>
		
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="resident.birthDate.label" default="BirthDate:" />
		<span class="required-indicator"></span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${residentInstance?.birthDate}"  />
	</div>
	
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'religion', 'error')} required">
	<label for="religion">
		<g:message code="resident.religion.label" default="Religion:" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="religion" from="${residentInstance.constraints.religion.inList}" required="" value="${residentInstance?.religion}" valueMessagePrefix="resident.religion"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="resident.status.label" default="Status:" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="status" from="${residentInstance.constraints.status.inList}" required="" value="${residentInstance?.status}" valueMessagePrefix="resident.status"/>
	</div>
	</div>
</div>
</div>

<div class="container">  
<div class="row">  

	<div class="span12">
	<h3> Direct Family Members </h3>
	<!-- family members-->
	
	<div class="span5">
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentSpouseName', 'error')} required">
		<g:message code="resident.residentSpouseName.label" default="Spouse Name:" /> 
	<span class="required-indicator"></span>
	<label>
		<g:textField name="residentSpouseName" required="" placeholder="Last name, First name M.I." value="${residentInstance?.residentSpouseName}"/>
	</div>
	
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentChildName', 'error')} ">
	<g:message code="resident.residentChildName.label" default="Children:" />
	<span class="required-indicator"></span>
	<label>
	<g:textField name="residentChildName" placeholder="Last name, First name M.I."value="${residentInstance?.residentChildName}"/>
	</div>
	
	</div>	
	</div>
	
</div>
</div>

<div class="container">  
<div class="row">
	
	<!-- next row information -->
	<h3> Additional Information <h3>
	
	<div class="span6">

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'educationalAttainment', 'error')} required">
	<label for="educationalAttainment">
		<g:message code="resident.educationalAttainment.label" default="Educational Attainment:" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="educationalAttainment" from="${residentInstance.constraints.educationalAttainment.inList}" required="" value="${residentInstance?.educationalAttainment}" valueMessagePrefix="resident.educationalAttainment"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'meansOfLiving', 'error')} required">
	<label for="meansOfLiving">
		<g:message code="resident.meansOfLiving.label" default="Means Of Living:" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="meansOfLiving" from="${residentInstance.constraints.meansOfLiving.inList}" required="" value="${residentInstance?.meansOfLiving}" valueMessagePrefix="resident.meansOfLiving"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'employmentStatus', 'error')} required">
	<label for="employmentStatus">
		<g:message code="resident.employmentStatus.label" default="Employment Status:" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="employmentStatus" from="${residentInstance.constraints.employmentStatus.inList}" required="" value="${residentInstance?.employmentStatus}" valueMessagePrefix="resident.employmentStatus"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'monthlyIncome', 'error')} required">
	<label for="monthlyIncome">
		<g:message code="resident.monthlyIncome.label" default="Monthly Income:" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="monthlyIncome" from="${residentInstance.constraints.monthlyIncome.inList}" required="" value="${residentInstance?.monthlyIncome}" valueMessagePrefix="resident.monthlyIncome"/>
	</div>
	</div>
	
	<!-- next row information -->
	
	<div class="span6">
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'environmentalSanitation', 'error')} required">
	<label for="environmentalSanitation">
		<g:message code="resident.environmentalSanitation.label" default="Environmental Sanitation:" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="environmentalSanitation" from="${residentInstance.constraints.environmentalSanitation.inList}" required="" value="${residentInstance?.environmentalSanitation}" valueMessagePrefix="resident.environmentalSanitation"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'meansOfDrinkingWater', 'error')} required">
	<label for="meansOfDrinkingWater">
		<g:message code="resident.meansOfDrinkingWater.label" default="Means Of Drinking Water:" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="meansOfDrinkingWater" from="${residentInstance.constraints.meansOfDrinkingWater.inList}" required="" value="${residentInstance?.meansOfDrinkingWater}" valueMessagePrefix="resident.meansOfDrinkingWater"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'disabilities', 'error')} required">
	<label for="disabilities">
		<g:message code="resident.disabilities.label" default="Disabilities:" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="disabilities" from="${residentInstance.constraints.disabilities.inList}" required="" value="${residentInstance?.disabilities}" valueMessagePrefix="resident.disabilities"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'medHistory', 'error')} required">
	<label for="medHistory">
		<g:message code="resident.medHistory.label" default="Medical History:" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="medHistory" required="" value="${residentInstance?.medHistory}"/>
	</div>
	</div>
	
</div>
</div>