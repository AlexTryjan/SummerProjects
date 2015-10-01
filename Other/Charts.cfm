Most Creative Colour Survey
	<cfchart
 	  format="png"
 	  scalefrom="0"
  	 scaleto="1200000"
	pieslicestyle="sliced">
 	 <cfchartseries
 	     type="pie"
   	   serieslabel="Creative Colours"
    	  seriescolor="blue"
		colorList="Red,##ffa500,Yellow,Green,Blue,Purple">
  	  <cfchartdata item="Red" value="#RandRange(500000, 1500000,"SHA1PRNG")#">
  	  <cfchartdata item="Orange" value="#RandRange(500000, 1500000,"SHA1PRNG")#">
  	  <cfchartdata item="Yellow" value="#RandRange(500000, 1500000,"SHA1PRNG")#">
  	  <cfchartdata item="Green" value="0">
   	 <cfchartdata item="Blue" value="#RandRange(500000, 1500000,"SHA1PRNG")#">
  	  <cfchartdata item="Purple" value="#RandRange(500000, 1500000,"SHA1PRNG")#">
  	</cfchartseries>
	</cfchart>