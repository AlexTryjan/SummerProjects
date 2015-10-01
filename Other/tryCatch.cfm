<cftry>
<cfquery datasource="unavailable" name="getUsers">
	Select FirstName from individual
</cfquery>
<cfoutput query="getUsers">#FirstName#<br /></cfoutput>
<cfcatch type="any"> <!---Application,Database,Security,Object,MissingInclude,template,expression,lock,searchEngine--->
	AN ERROR HAS OCCURED
</cfcatch>
</cftry>

<!---
Catch Any Exceptions in program
<cferror type="exception" template="errors.cfm" exception="any">
--->