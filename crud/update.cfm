<cfparam name="url.restaurantID" type="string" default="" />
<link rel="stylesheet" type="text/css" href="css/styles.css">
<html>
	<head>
		<title>Update Operator</title>
	</head>
	<cfinclude template="inc/inc_header.cfm">
	<cfinclude template="inc/inc_hplacehold.cfm">
	<body>
		<cfif url.restaurantID NEQ "">
<!--- Restaurant ID is caught from URL second time. You can also avoid ID input by typing into URL. --->
		<cfquery name="GetOperator" datasource="FSLibrary_RPC">
   			SELECT * FROM tmp_restaurants_alex
		    	WHERE restaurantID = #URL.restaurantID#
		</cfquery>

<!---
<cfoutput query="GetOperator">
<table>
<form action="act/act_update.cfm" method="Post">
	<input type="Hidden" name="restaurantID" value="#restaurantID#"><br>
    Operator Name:
	<input type="text"
		name="name"
		value="#name#">
	<br>Address:
	<input type="text"
		name="address"
		value="#address#"
		size="80">
	<br>City:
	<input type="text"
		name="city"
		value="#city#">
	State:
	<cfset abbrev="AL,AK,AZ,AR,CA,CO,CT,DE,DC,FL,GA,HI,ID,IL,IN,IA,KS,KY,LA,ME,MD,MA,MI,MN,MS,MO,MT,NE,NV,NH,NJ,NM,NY,NC,ND,OH,OK,OR,PA,PR,RI,SC,SD,TN,TX,UT,VT,VA,WA,WV,WI,WY">
	<select name="state">
		<cfloop from="1" to="#listlen(abbrev)#" index="astate">
     	   <option value="#listgetat(abbrev, astate)#" <cfif "#state#" EQ "#listgetat(abbrev, astate)#">selected="selected"</cfif>>#listgetat(abbrev, astate)#</option>
    	</cfloop>
	</select>
	Zipcode:
	<input type="text"
		name="zipcode"
		value="#zipcode#">
	<br>Email:
	<input type="text"
		name="email"
		value="#email#">
	Phone Number:
	<input type="text"
		name="phone"
		value="#phone#">
	Website:
	<input type="text"
		name="website"
		value="#website#">
	<br>Profile:
	<input type="text"
		name="profile"
		value="#profile#"
		size="80"><br>
	Admin Password:
	<input type="text"
		name="pass"> <br>
	<input type="reset"
        name="ResetForm"
        value="Clear Form">
    <input type="submit"
        name="UpdateForm"
        value="Update Information">
</form>
</table>
</cfoutput>
--->

		<center>
		<cfoutput query="GetOperator">
			<!---Form for Update Page--->
			<table class="create" border="0" cellpadding="5" cellspacing="0">
				<tbody>
					<form action="act/act_update.cfm" method="Post">

						<input type="Hidden" name="restaurantID" value="#restaurantID#"><br>

						<tr>
							<td>Operator Name:</td>
							<td><input type="text" name="name" value="#name#"></td>
							<td>Address:</td>
							<td colspan="4"><input type="text"
									name="address"
									value="#address#"
									size="80"></td>
						</tr>

						<tr>
							<td>City:</td>
							<td><input type="text"
									name="city"
									value="#city#"></td>
							<td>State:</td>
							<td><!---Generates list of states--->
								<cfset abbrev="AL,AK,AZ,AR,CA,CO,CT,DE,DC,FL,GA,HI,ID,IL,IN,IA,KS,KY,LA,ME,MD,MA,MI,MN,MS,MO,MT,NE,NV,NH,NJ,NM,NY,NC,ND,OH,OK,OR,PA,PR,RI,SC,SD,TN,TX,UT,VT,VA,WA,WV,WI,WY">
									<select name="state">
										<cfloop from="1" to="#listlen(abbrev)#" index="astate">
								     	   <option value="#listgetat(abbrev, astate)#" <cfif "#state#" EQ "#listgetat(abbrev, astate)#">selected="selected"</cfif>>#listgetat(abbrev, astate)#</option>
								    	</cfloop>
									</select>
							</td>
							<td>Zipcode:</td>
							<td>
								<input type="text"
									name="zipcode"
									value="#zipcode#">
							</td>
						</tr>

						<tr>
							<td>Email:
							<td><input type="text"
									name="email"
									value="#email#"></td>
							</td>

							<td>Phone:</td>
							<td><input type="text"
									name="phone"
									value="#phone#"><br></td>

							<td>Website:</td>
							<td><input type="text"
									name="website"
									value="#website#"><br></td>
						</tr>

						<tr>
							<td>Profile:</td>
							<td colspan="10"><textarea name="profile" cols="50" rows="5">#profile#</textarea><br>
							</td>
						</tr>

						<tr>
								<td>Admin Password:</td>
								<td><input type="password" name="pass"><br></td>
						</tr>

						<tr><td colspan="2" class="separator"></td></tr>

						<tr>
							<td colspan="2"><center><input type="submit" name="SubmitForm" value="Update Data"></center></td>
						</tr>

						<tr>
							<td colspan="2"></td>
						</tr>

					</form>
				</tbody>
			</table>
		</cfoutput>
		</center>


		<cfelse> <!---Form for Restaurant ID--->
			<div>
				<center><p>
					Welcome to the Update page! <br><br>
					Here you can change data for operators that are stored in the database. Simply type in the restaurant ID <br>for the operator you wish to
					update information for. If you need to find a restaurant's ID, the List section can help you. <br> <br>
				</p></center>
			</div>
			<p>
				<table class="create" border="0" cellpadding="5" cellspacing="0">
					<tbody>
						<form id="rest" name="rest" action="" method="Post">
							Restaurant ID:
							<input type="text" name="ID"><br>
							<input type="submit" name="SubmitForm" value="Access Data" onclick= "return urlIDchangeU();" >
						</form>
					</tbody>
				</table>
			</p>
		</cfif>

	</body>
<cfinclude template="inc/inc_footer.cfm">
</html>
<script src="js/scripts.js"></script>