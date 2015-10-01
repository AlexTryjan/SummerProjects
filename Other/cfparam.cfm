<cfset firstname="Barry">
<cfparam name = "firstName" default="Ozzy">
<cfoutput>Hello #firstname#</cfoutput>
<!--- defaults to Ozzy is firstname is not set,
otherwise the cfset take priority --->
