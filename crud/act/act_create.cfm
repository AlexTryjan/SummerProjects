<link rel="stylesheet" type="text/css" href="../css/styles.css">
<html>
<head> <title>Create Operator</title> </head>

<cfinclude template="../inc/inc_act_header.cfm">
<cfinclude template="../inc/inc_act_hplacehold.cfm">
<body>
<!--- Insert the new record --->
<cfif form.pass EQ "admin">
	<cfinsert datasource="FSLibrary_RPC" tablename="tmp_restaurants_alex" formFields="name,address,city,state,zipcode,email,phone,website,profile">
	<cfquery name="NewID" datasource="FSLibrary_RPC">
	    SELECT restaurantID FROM tmp_restaurants_alex
	    WHERE name = '#Form.name#' AND address = '#Form.address#'

	</cfquery>
	<cfoutput query="NewID">
	<h1>Operator Added</h1>
	<p>
		<cfoutput> You have added #Form.Name# to the operator database.<br>OperatorID: #restaurantID#</cfoutput>
	</p><br>
	</cfoutput>
<cfelse>
	<h2>
		<cfoutput> **INCORRECT PASSWORD** </cfoutput>
		<cfoutput> **INPUT FAILED** </cfoutput>
	</h2><br>
</cfif>
</body>
<cfinclude template="../inc/inc_act_footer.cfm">
</html>


<!---Script for MS SQL
SELECT [restaurantId]
      ,[name]
      ,[email]
      ,[address]
      ,[city]
      ,[state]
      ,[zipcode]
      ,[website]
      ,[phone]
      ,[profile]
  FROM [FSLibrary_RPC].[dbo].[tmp_restaurants_alex]
  WHERE [name]='Test2' OR [name]='Test1' OR [name]='Test3'OR [name]='Test4' OR [name]='Test5'
--->

<!---Create does not set profile, update does... hmm... why? FRIDAY--->

<!---Now it does?! MONDAY--->