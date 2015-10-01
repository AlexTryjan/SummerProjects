<link rel="stylesheet" type="text/css" href="css/styles.css">
<html>
	<head>
		<title>Create Operator</title>
	</head>
	<cfinclude template="inc/inc_header.cfm">
	<cfinclude template="inc/inc_hplacehold.cfm">
	<body>
<!---
<h3>New Operator Form</h3>
<form action="act/act_create.cfm" method="POST">
	Operator Name:
	<input type="text"
		name="name">
	<br>Address:
	<input type="text"
		name="address"
		size="80">
	<br>City:
	<input type="text"
		name="city">
	State:
	<select name="state">
		<option value="AL">Alabama</option>
		<option value="AK">Alaska</option>
		<option value="AZ">Arizona</option>
		<option value="AR">Arkansas</option>
		<option value="CA">California</option>
		<option value="CO">Colorado</option>
		<option value="CT">Connecticut</option>
		<option value="DE">Delaware</option>
		<option value="DC">District Of Columbia</option>
		<option value="FL">Florida</option>
		<option value="GA">Georgia</option>
		<option value="HI">Hawaii</option>
		<option value="ID">Idaho</option>
		<option value="IL">Illinois</option>
		<option value="IN">Indiana</option>
		<option value="IA">Iowa</option>
		<option value="KS">Kansas</option>
		<option value="KY">Kentucky</option>
		<option value="LA">Louisiana</option>
		<option value="ME">Maine</option>
		<option value="MD">Maryland</option>
		<option value="MA">Massachusetts</option>
		<option value="MI">Michigan</option>
		<option value="MN">Minnesota</option>
		<option value="MS">Mississippi</option>
		<option value="MO">Missouri</option>
		<option value="MT">Montana</option>
		<option value="NE">Nebraska</option>
		<option value="NV">Nevada</option>
		<option value="NH">New Hampshire</option>
		<option value="NJ">New Jersey</option>
		<option value="NM">New Mexico</option>
		<option value="NY" selected="selected">New York</option>
		<option value="NC">North Carolina</option>
		<option value="ND">North Dakota</option>
		<option value="OH">Ohio</option>
		<option value="OK">Oklahoma</option>
		<option value="OR">Oregon</option>
		<option value="PA">Pennsylvania</option>
		<option value="RI">Rhode Island</option>
		<option value="SC">South Carolina</option>
		<option value="SD">South Dakota</option>
		<option value="TN">Tennessee</option>
		<option value="TX">Texas</option>
		<option value="UT">Utah</option>
		<option value="VT">Vermont</option>
		<option value="VA">Virginia</option>
		<option value="WA">Washington</option>
		<option value="WV">West Virginia</option>
		<option value="WI">Wisconsin</option>
		<option value="WY">Wyoming</option>
	</select>
	Zipcode:
	<input type="text"
		name="zipcode">
	<br>Email:
	<input type="text"
		name="email">
	Phone Number:
	<input type="text"
		name="phone">
	Website:
	<input type="text"
		name="website">
	<br>Profile:
	<input type="text"
		name="profile"
		size="80"> <br>
	Admin Password:
	<input type="text"
		name="pass"> <br>
	<input type="reset"
        name="ResetForm"
        value="Clear Form">
    <input type="submit"
        name="SubmitForm"
        value="Insert Data">
</form>

</table>
--->
		<div>
			<center><p>
				Welcome to the Create page! <br><br>
				Here you can input data that corresponds to the labels seen below in order to store a new operator in the database. The <br>
				Restaurant ID will be shown to you after succesfully adding the new information. This ID can then be used to Update/Delete <br>
				the information you will have just added to the database. If you need to find a restaurant's ID again, the List section can help you.
				<br> <center>Make sure to input as much information as possible.</center><br>
			</p></center>
		</div>
		<center><table class="create" border="0" cellpadding="5" cellspacing="0">
			<tbody>
			<form action="act/act_create.cfm" method="POST">
				<tr>
					<td>Operator Name:</td>
					<td><input type="text" name="name"></td>
					<td>Address:</td>
					<td colspan="4"><input type="text" name="address" size="58"></td>
				</tr>
				<tr>
					<td>City:</td>
					<td><input type="text"name="city"></td>
					<td>State:</td>
					<td>
						<select name="state">
							<option value="AL">Alabama</option>
							<option value="AK">Alaska</option>
							<option value="AZ">Arizona</option>
							<option value="AR">Arkansas</option>
							<option value="CA">California</option>
							<option value="CO">Colorado</option>
							<option value="CT">Connecticut</option>
							<option value="DE">Delaware</option>
							<option value="DC">District Of Columbia</option>
							<option value="FL">Florida</option>
							<option value="GA">Georgia</option>
							<option value="HI">Hawaii</option>
							<option value="ID">Idaho</option>
							<option value="IL">Illinois</option>
							<option value="IN">Indiana</option>
							<option value="IA">Iowa</option>
							<option value="KS">Kansas</option>
							<option value="KY">Kentucky</option>
							<option value="LA">Louisiana</option>
							<option value="ME">Maine</option>
							<option value="MD">Maryland</option>
							<option value="MA">Massachusetts</option>
							<option value="MI">Michigan</option>
							<option value="MN">Minnesota</option>
							<option value="MS">Mississippi</option>
							<option value="MO">Missouri</option>
							<option value="MT">Montana</option>
							<option value="NE">Nebraska</option>
							<option value="NV">Nevada</option>
							<option value="NH">New Hampshire</option>
							<option value="NJ">New Jersey</option>
							<option value="NM">New Mexico</option>
							<option value="NY" selected="selected">New York</option>
							<option value="NC">North Carolina</option>
							<option value="ND">North Dakota</option>
							<option value="OH">Ohio</option>
							<option value="OK">Oklahoma</option>
							<option value="OR">Oregon</option>
							<option value="PA">Pennsylvania</option>
							<option value="RI">Rhode Island</option>
							<option value="SC">South Carolina</option>
							<option value="SD">South Dakota</option>
							<option value="TN">Tennessee</option>
							<option value="TX">Texas</option>
							<option value="UT">Utah</option>
							<option value="VT">Vermont</option>
							<option value="VA">Virginia</option>
							<option value="WA">Washington</option>
							<option value="WV">West Virginia</option>
							<option value="WI">Wisconsin</option>
							<option value="WY">Wyoming</option>
						</select>
					</td>
					<td>Zipcode:</td>
					<td><input type="text" name="zipcode"></td>
				</tr>
				<tr>
					<td>Email:
						<td><input type="text" name="email"></td>
					</td>
					<td>Phone:</td>
					<td><input type="text" name="phone"><br></td>
					<td>Website:</td>
					<td><input type="text" name="website"><br></td>
				</tr>
				<tr>
					<td>Profile:</td>
					<td colspan="10"><textarea name="profile" cols="50" rows="5"></textarea><br></td>
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
		</table></center>


	</body>

<cfinclude template="inc/inc_footer.cfm">

</html>