<link rel="stylesheet" type="text/css" href="../css/styles.css">
<html>
<head>
    <title>Update Operator</title>
</head>
<cfinclude template="../inc/inc_act_header.cfm">
<cfinclude template="../inc/inc_hplacehold.cfm">
<br>
<body>

<cfif form.pass EQ "admin"> <!---Updates Database--->
    <cfquery name="UpdateOperator" datasource="FSLibrary_RPC">
	    UPDATE tmp_restaurants_alex
	    SET name = '#Form.name#',
	        address = '#Form.address#',
	        city = '#Form.city#',
	        state = '#Form.state#',
	        zipcode = '#Form.zipcode#',
			email = '#Form.email#',
			phone = '#Form.phone#',
			website = '#Form.website#',
			profile = '#Form.profile#'
	    WHERE restaurantID = #Form.restaurantID#
	</cfquery>
<br><br>
	<h1>Operator Updated</h1>

	<p>
		<cfoutput>
		You have updated the information for
		#Form.name#
		in the Operator database.<br><br> OperatorID: #Form.restaurantID#
		</cfoutput>
	</p><br>

<cfelse><br><br><br><br>
	<h2><cfoutput>
		**INCORRECT PASSWORD**<br>
		**INPUT FAILED**
	</cfoutput><br></h2>
</cfif>

</body>
<cfinclude template="../inc/inc_act_footer.cfm">
</html>
