<cfset setPars = "Red,Orange,Yellow,Green,Blue,Indigo,Violet">
<cfset list = replace(setPars, 'Green,', '', 'all')>
<cfloop list=#list# index="CreativeColour" delimiters=",">
	<cfoutput>
		#CreativeColour#<br />
	</cfoutput>
</cfloop>