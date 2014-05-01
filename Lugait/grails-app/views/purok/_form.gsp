<%@ page import="lugait.Purok" %>



<div class="fieldcontain ${hasErrors(bean: purokInstance, field: 'purok', 'error')} required">
	<label for="year">
		<g:message code="purok.label" default="Purok" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="purok" type="number" min="2000" max="2050" value="${purokInstance.purok}" required=""/>
</div>


	
