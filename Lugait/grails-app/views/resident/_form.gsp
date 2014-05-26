<%@ page import="lugait.Resident" %>

<div class="container">  
<div class="row">  

	<div class="span12">
	<!-- Basic Information -->
	
	<div class="span6">

	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'purok', 'error')} required">
	<label for="purok">
		<g:message code="resident.purok.label" default="Resident's Purok:" />
		<span class="required-indicator"></span>
	</label>
	<g:select name="purok" from="${residentInstance.constraints.purok.inList}" required="" value="${residentInstance?.purok}" valueMessagePrefix="resident.purok"/>
	</div>
			
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
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'age', 'error')} required">
	<label for="age">
	<g:message code="resident.age.label" default="Age:" />
		<span class="required-indicator"></span>
	</label> 
	<g:textField name="age" required="" placeholder="" value="${residentInstance?.age}"/>
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
		
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'birthMonth', 'error')} required">
	<label for="birthMonth">
		<g:message code="resident.birthMonth.label" default="BirthDate:" />
		<span class="required-indicator"></span>
	</label>
	<select name="birthMonth" required="">
				<option value="${residentInstance?.birthMonth}" valueMessagePrefix="resident.birthMonth">-Please select Day-</option>
				<option value=01>January</option>
				<option value=02>February</option>
				<option value=03>March</option>
				<option value=04>April</option>
				<option value=05>May</option>
				<option value=06>June</option>
				<option value=07>July</option>
				<option value=08>August</option>
				<option value=09>September</option>
				<option value=10>October</option>
				<option value=11>November</option>
				<option value=12>December</option>
	</select>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<span class="required-indicator"></span>
	</label>
	<select name="birthDate" required="">
				<option value="${residentInstance?.birthDate}" valueMessagePrefix="resident.birthDate">-Please select Day-</option>
				<option value=01>1</option><option value=02>2</option>
				<option value=03>3</option><option value=04>4</option>
				<option value=05>5</option><option value=06>6</option>
				<option value=07>7</option><option value=08>8</option>
				<option value=09>9</option><option value=10>10</option>
				<option value=11>11</option>
				<option value=12>12</option><option value=13>13</option>
				<option value=14>14</option><option value=15>15</option>
				<option value=16>16</option><option value=17>17</option>
				<option value=18>18</option><option value=19>19</option>
				<option value=20>20</option><option value=21>21</option>
				<option value=22>22</option><option value=23>23</option>
				<option value=24>24</option><option value=25>25</option>
				<option value=26>26</option><option value=27>27</option>
				<option value=28>28</option><option value=29>29</option>
				<option value=30>30</option><option value=31>31</option>
	</select>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'birthYear', 'error')} required">
	<label for="birthYear">
		<span class="required-indicator"></span>
	</label>
	<select name="birthYear" required="">
				<option value="${residentInstance?.birthYear}" valueMessagePrefix="resident.birthYear">-Please select Year-</option>
				<option value=1950>1950</option><option value=1951>1952</option>
				<option value=1953>1953</option><option value=1964>1954</option>
				<option value=1955>1955</option><option value=1956>1956</option>
				<option value=1957>1957</option><option value=1958>1958</option>
				<option value=1959>1959</option><option value=1960>1960</option>
				<option value=11961>1961</option><option value=1962>1962</option>
				<option value=1963>1963</option><option value=1964>1964</option>
				<option value=1965>1965</option>
				<option value=1966>1966</option><option value=1967>1967</option>
				<option value=1968>1968</option><option value=1969>1969</option>
				<option value=1970>1970</option><option value=1971>1971</option>
				<option value=1972>1972</option><option value=1973>1973</option>
				<option value=1974>1974</option><option value=1975>1975</option>
				<option value=1976>1976</option><option value=1977>1977</option>
				<option value=1978>1978</option><option value=1979>1979</option>
				<option value=1980>1980</option><option value=1981>1981</option>
				<option value=1982>1982</option><option value=1983>1983</option>
				<option value=1984>1984</option><option value=1985>1985</option>
				<option value=1986>1986</option><option value=1987>1987</option>
				<option value=1988>1988</option><option value=1989>1989</option>
				<option value=1990>1990</option><option value=1991>1991</option>
				<option value=1992>1992</option><option value=1993>1993</option>
				<option value=1994>1994</option><option value=1995>1995</option>
				<option value=1996>1996</option><option value=1997>1997</option>
				<option value=1998>1998</option><option value=1999>1999</option>
				<option value=2000>2000</option><option value=2001>2001</option>
				<option value=2002>2002</option><option value=2003>2003</option>
				<option value=2004>2004</option><option value=2005>2005</option>
				<option value=2006>2006</option><option value=2007>2007</option>
				<option value=2008>2008</option><option value=2009>2009</option>
				<option value=2010>2010</option><option value=2011>2011</option>
				<option value=2012>2012</option><option value=2013>2013</option>
				<option value=2014>2014</option><option value=2015>2015</option>
				<option value=2016>2016</option><option value=2017>2017</option>
				<option value=2018>2018</option><option value=2019>2019</option>
				<option value=2020>2020</option><option value=2021>2021</option>
				
	</select>
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
	
	
	<div class="fieldcontain ${hasErrors(bean: residentInstance, field: 'residentChildName', 'error')} required">
	<g:message code="resident.residentChildName.label" default="Children:" />
	<span class="required-indicator"></span>
	<label>
	<g:textField name="residentChildName"  value="${residentInstance?.residentChildName}"/>
	<g:textField name="residentChildName" 	value="${residentInstance?.residentChildName}"/>
	<g:textField name="residentChildName" 	value="${residentInstance?.residentChildName}"/>
	<g:textField name="residentChildName" 	value="${residentInstance?.residentChildName}"/>
	<g:textField name="residentChildName"  value="${residentInstance?.residentChildName}"/>
	<g:textField name="residentChildName"  value="${residentInstance?.residentChildName}"/>
	
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