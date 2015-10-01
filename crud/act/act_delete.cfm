<link rel="stylesheet" type="text/css" href="../css/styles.css">
<html>
<head>
    <title>Delete Operator</title>
</head>
<cfinclude template="../inc/inc_act_header.cfm">
<body>
	<br><BR><BR><BR<BR><BR><BR>
<cfif form.pass EQ "admin">
    <cfquery name="DeleteOperator" datasource="FSLibrary_RPC">
	    DELETE FROM tmp_restaurants_alex
	    WHERE restaurantID = #Form.restaurantID#
	</cfquery>


	<h1>Operator Removed</h1>
	<p>
	<cfoutput>
	You have removed the information for
	#Form.name#
	from the Operator database.
	</cfoutput>
	</p>
<cfelse>
	<h2>
	<cfoutput> **INCORRECT PASSWORD** </cfoutput><br>
	<cfoutput> **DELETE FAILED** </cfoutput>
	</h2>

</cfif>
</body>
<cfinclude template="../inc/inc_act_footer.cfm">
</html>
