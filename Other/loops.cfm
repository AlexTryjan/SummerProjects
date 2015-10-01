<cfloop from="0" to="20" index="i" step="4"> <cfoutput>#i#<br /></cfoutput></cfloop>

<cfset myVar=false>
<cfloop condition="myVar eq false">
	<cfoutput>#myVar#</cfoutput>
	<cfif RandRange(1,10) eq 10>
		<cfset myVar="true">
	</cfif>
</cfloop>
<cfoutput>We done.</cfoutput>

<br />

<cfset myBooks = StructNew()>
<cfset myVariable = StructInsert(myBooks,"ColdFusion","ColdFusion MX Bible")>
<cfset myVariable = StructInsert(myBooks,"HTML","HTML Visual QuickStart")>
<cfset myVariable = StructInsert(myBooks,"XML","Inside XML")>
<cfloop collection="#myBooks#" item="subject">
	<cfoutput>
 		<b>#subject#:</b> #StructFind(myBooks,subject)#<br />
 	</cfoutput>
</cfloop>