<cfset firstName = "Ozzy">
<cfif firstName eq "Bono">
	'B'
<cfelseif firstName neq "Ozzy">
	I don't even know anymore...'
<cfelse>
	'O'
</cfif>

<cfset hitPoints = 0>
<cfif hitPoints lte 0>
	He deed.
<cfelseif hitPoints gt 0>
	He not deed.
</cfif>