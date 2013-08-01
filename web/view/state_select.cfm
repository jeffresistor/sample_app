<cfparam name="numStates" default="0">
<cfparam name="populateMenu" default="false">

<cfoutput>
#request.error#

<cfif populateMenu>
Select one of the #numStates# US States: 
<select name="state">
<cfoutput query="request.rsStates"><option value="state_code">#state_name#</option></cfoutput>	
</select>
<cfelse>
Unable to retrieve the list of US States
</cfif>	

</cfoutput>