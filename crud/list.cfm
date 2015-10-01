<link rel="stylesheet" type="text/css" href="css/styles.css">
<style>
	td {
		color: black;
	}
</style>
<cfparam name="url.r" type="string" default="" />
<html>
<head>
<title>List Operators</title>
</head>
<cfinclude template="inc/inc_header.cfm">
<cfinclude template="inc/inc_hplacehold.cfm">
<body>

<cfif url.r EQ 1>

	<cfcache action = flush>

</cfif>

	<cfcache action="cache" timespan="#createtimespan(1,0,0,0)#">

	<cfquery name="ListOperators" datasource="FSLibrary_RPC">
	    SELECT * FROM tmp_restaurants_alex
	</cfquery>

	<div>
		<center><p>
			Welcome to the List page! <br><br>
			NOTE: Updating will take a few seconds. <br><br>
		</p></center>
	</div>

	<p>
	Last Updated: <cfoutput>#TimeFormat(Now())#</cfoutput>
	<br>
	<form id="resetCache" name="resetCache" action="list.cfm?r=1" method="Post">
		<p><input type="submit" name="updateCache" value="Update?"></p>
	</form>
	</p>

	<cfdump var="#ListOperators#">
	</cfcache>

</body>
<cfinclude template="inc/inc_footer.cfm">
</html>