<%@ page import="lugait.Resident" %>

<div class="container">  
<div class="row">  

	<div class="span12">
	<!-- Basic Information -->
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentNumber', 'error')} required">
	<label for="residentNumber">
		<h4>Resident Number</h4>
		<span class="required-indicator"></span>
	</label>
	<g:textField name="residentNumber" required="" value="${residentInstance?.residentNumber}"/>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'precinctNumber', 'error')} required">
	<label for="precinctNumber">
		<h4>Precinct Number</h4>
		<span class="required-indicator"></span>
	</label>
	<g:textField name="precinctNumber" required="" value="${residentInstance?.precinctNumber}"/>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'householdRole', 'error')} required">
	<label for="householdRole">
		<h4>Household Role</h4>
		<span class="required-indicator"></span>
	</label>
	<g:select name="householdRole" from="${residentInstance.constraints.householdRole.inList}" required="" value="${residentInstance?.householdRole}" valueMessagePrefix="resident.householdRole"/>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentFirstName', 'error')} required">
	<label for="residentFirstName">
		<h4>Resident Name</h4>
		<span class="required-indicator"></span>
	</label> 
	<g:textField name="residentFirstName" required="" placeholder="First Name" value="${residentInstance?.residentFirstName}"/>
	<g:textField name="residentMiddleName" required="" placeholder="Middle Name" value="${residentInstance?.residentMiddleName}"/>
	<g:textField name="residentLastName" required="" placeholder="Last Name" value="${residentInstance?.residentLastName}"/>
	</div>

	<!-- <div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentMiddleName', 'error')} required">
	<label for="residentMiddleName">
		<g:message code="resident.residentMiddleName.label" default="Middle Name" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="residentMiddleName" required="" value="${residentInstance?.residentMiddleName}"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentLastName', 'error')} required">
	<label for="residentLastName">
		<g:message code="resident.residentLastName.label" default="Last Name" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="residentLastName" required="" value="${residentInstance?.residentLastName}"/>
	</div> -->
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<h4>Birthdate</h4>
		<span class="required-indicator"></span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${residentInstance?.birthDate}"  />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'address', 'error')} required">
	<label for="address">
		<h4>Address</h4>
		<span class="required-indicator"></span>
	</label>
	<g:textField name="address" required="" value="${residentInstance?.address}"/>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'religion', 'error')} required">
	<label for="religion">
		<h4>Religion</h4>
		<span class="required-indicator"></span>
	</label>
	<g:select name="religion" from="${residentInstance.constraints.religion.inList}" required="" value="${residentInstance?.religion}" valueMessagePrefix="resident.religion"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'status', 'error')} required">
	<label for="status">
		<h4>Status</h4>
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
	
	<h4>Spouse</h4>
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentSpouseFirstName', 'error')} required">
	<!-- <label for="residentSpouseFirstName">
		<g:message code="resident.residentSpouseFirstName.label" default="First Name" />
	</label> -->
	<g:textField name="residentSpouseFirstName" required="" placeholder="First Name" value="${residentInstance?.residentSpouseFirstName}"/> 
	<g:textField name="residentSpouseMiddleName" required="" placeholder="Middle Name" value="${residentInstance?.residentSpouseMiddleName}"/>
	<g:textField name="residentSpouseLastName" required="" placeholder="Last Name" value="${residentInstance?.residentSpouseLastName}"/>
	
	</div>

	<!-- <div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentSpouseMiddleName', 'error')} required">
	<label for="residentSpouseMiddleName">
		<g:message code="resident.residentSpouseMiddleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="residentSpouseMiddleName" required="" value="${residentInstance?.residentSpouseMiddleName}"/> 
	</div>

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentSpouseLastName', 'error')} required">
	<label for="residentSpouseLastName">
		<g:message code="resident.residentSpouseLastName.label" default="Last Name" />
		
	</label>
	<g:textField name="residentSpouseLastName" required="" value="${residentInstance?.residentSpouseLastName}"/> 
	</div> -->
	
	<h4>Children</h4>
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'child', 'error')} ">
	<!-- <label for="child">
		<g:message code="resident.child.label" default="Child" />
	</label> -->
	<g:textField name="child" value="${residentInstance?.child}"/>
	</div>
	</div>
	
</div>
</div>


<div class="container">  
<div class="row">
	
	<!-- next row information -->
	<h3> Additional Information <h3>
	<div class="span4">

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'educationalAttainment', 'error')} required">
	<label for="educationalAttainment">
		<g:message code="resident.educationalAttainment.label" default="Educational Attainment" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="educationalAttainment" from="${residentInstance.constraints.educationalAttainment.inList}" required="" value="${residentInstance?.educationalAttainment}" valueMessagePrefix="resident.educationalAttainment"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'meansOfLiving', 'error')} required">
	<label for="meansOfLiving">
		<g:message code="resident.meansOfLiving.label" default="Means Of Living" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="meansOfLiving" from="${residentInstance.constraints.meansOfLiving.inList}" required="" value="${residentInstance?.meansOfLiving}" valueMessagePrefix="resident.meansOfLiving"/>
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
	
	<!-- next row information -->
	<div class="span4">
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'environmentalSanitation', 'error')} required">
	<label for="environmentalSanitation">
		<g:message code="resident.environmentalSanitation.label" default="Environmental Sanitation" />
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
	<g:select name="disabilities" from="${residentInstance.constraints.disabilities.inList}" required="" value="${residentInstance?.disabilities}" valueMessagePrefix="resident.disabilities"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'medHistory', 'error')} required">
	<label for="medHistory">
		<g:message code="resident.medHistory.label" default="Med History" />
		<span class="required-indicator"></span>
	</label>
	<g:textField name="medHistory" required="" value="${residentInstance?.medHistory}"/>
	</div>
	</div>
	
</div>
</div>