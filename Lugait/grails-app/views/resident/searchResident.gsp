<%@ page import="lugait.Resident" %>
<!DOCTYPE html>
<html>
<head>
	<title>Search Resident</title>
</head>
<body>
<hr/>
<br/>
<br/>
<p><center>
	<g:form action="searchResident" controller="Resident" class="">
			<g:textField name="residentNumber" value="${params.input}" size="15" placeholder="Resident Id No."/>
			<g:submitButton name="search" class="buttons" value="Search" />
	</g:form> 
</center></p>

</body>
</html>