<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    
    
     
        <sch:pattern>
        <sch:rule context="tei:persName/@ref">
            <sch:let name="standoff"
                value="doc('https://raw.githubusercontent.com/margaretgregory/HIST-630-/main/standoffMarkup4thAnnualCitizensCouncilReport.xml')"/>
            <sch:let name="personIDs"
                value="$standoff//tei:listPerson/tei:person/@xml:id"/>
            <sch:let name="personRefValues" value="for $i in $personIDs return concat('#', $i)"/>
            <sch:let name="error" value="."/>
            <sch:assert
                test=". =$personRefValues"
                ><sch:value-of select="$error"/> Error: Acceptable values are: 
                <sch:value-of select="string-join($personIDs, ', ')"/>
          
            </sch:assert>
        </sch:rule>
           
  
   
        <sch:rule context="tei:placeName/@ref">
            <sch:let name="standoff"
                value="doc('https://raw.githubusercontent.com/margaretgregory/HIST-630-/main/standoffMarkup4thAnnualCitizensCouncilReport.xml')"/>
            <sch:let name="placeIDs"
                value="$standoff//tei:listPlace/tei:place/@xml:id"/> 
            <sch:let name="placeRefValues" value="for $i in $placeIDs return concat('#', $i)"/>
            <sch:let name="error" value="."/>
            <sch:assert
                test=". =$placeRefValues"
                ><sch:value-of select="$error"/> Error: Acceptable values are: 
                <sch:value-of select="string-join($placeIDs, ', ')"/>
                
            </sch:assert>
        </sch:rule>
        
    
        <sch:rule context="tei:orgName/@ref">
            <sch:let name="standoff"
                value="doc('https://raw.githubusercontent.com/margaretgregory/HIST-630-/main/standoffMarkup4thAnnualCitizensCouncilReport.xml')"/>
            <sch:let name="orgIDs"
                value="$standoff//tei:listOrg/tei:org/@xml:id"/> 
            <sch:let name="orgRefValues" value="for $i in $orgIDs return concat('#', $i)"/>
            <sch:let name="error" value="."/>
            <sch:assert
                test=". =$orgRefValues"
                ><sch:value-of select="$error"/> Error: Acceptable values are: 
                <sch:value-of select="string-join($orgIDs, ', ')"/>
                
            </sch:assert>
        </sch:rule>
        
       
            
 <!--           
            
         <sch:rule context="tei:placeName/@ref">
             <sch:let name="placeName" value="tokenize(., ' ')"></sch:let>
             <sch:let name="ti"
                 value="doc("
             <sch:let name="placeIDs" 
                 value="$ti//listURI[@type 
                 
                 
                 

            <sch:assert test=". ='#place' or .='#something'">
                This @ref attribute must include a "#placexxx".
            </sch:assert>
        </sch:rule>
    </sch:pattern>  
    -->
    <!--   
        <sch:rule context="// tei:persName/@type">
            <sch:assert test=".='J.O. Sams'"></sch:assert>
        </sch:rule>
            https://raw.githubusercontent.com/margaretgregory/HIST-630-/main/standoffMarkup4thAnnualCitizensCouncilReport.xml       -->  
    
        </sch:pattern>  
</sch:schema>






