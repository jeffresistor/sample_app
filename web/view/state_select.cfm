<cfparam name="numStates" default="0">
<cfparam name="populateMenu" default="false">

<cfoutput>

Select one of the #numStates# US States: 

<cfif populateMenu>
<select name="state">
<cfoutput query="request.rsStates"><option value="state_code">#state_name#</option></cfoutput>	
</select>
</cfif>	

</cfoutput>