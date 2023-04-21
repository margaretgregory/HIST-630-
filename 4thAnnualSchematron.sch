<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    
    
     
        <sch:pattern>
        <sch:rule context="tei:persName/@ref">
            <sch:let name="standoff"
                value="doc('https://raw.githubusercontent.com/margaretgregory/HIST-630-/main/standoffMarkup4thAnnualCitizensCouncilReport.xml')"/>
            <sch:let name="personIDs"
                value="$standoff//person/@xml:id"/> 
            <sch:let name="error" value="."/>
            <sch:assert
                test=". =$personIDs"
                ><sch:value-of select="$error"/> Error: Acceptable values are: 
                <sch:value-of select="personIDs"/>
          
            </sch:assert>
        </sch:rule>
           
    </sch:pattern>      
    
    <sch:pattern>
        <sch:rule context="tei:placeName/@ref">
            <sch:let name="standoff"
                value="doc('https://raw.githubusercontent.com/margaretgregory/HIST-630-/main/standoffMarkup4thAnnualCitizensCouncilReport.xml')"/>
            <sch:let name="placeIDs"
                value="$standoff//place/@xml:id"/> 
            <sch:let name="error" value="."/>
            <sch:assert
                test=". =$placeIDs"
                ><sch:value-of select="$error"/> Error: Acceptable values are: 
                <sch:value-of select="placeIDs"/>
                
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>   
    
    <sch:pattern>
        <sch:rule context="tei:orgName/@ref">
            <sch:let name="standoff"
                value="doc('https://raw.githubusercontent.com/margaretgregory/HIST-630-/main/standoffMarkup4thAnnualCitizensCouncilReport.xml')"/>
            <sch:let name="orgIDs"
                value="$standoff//org/@xml:id"/> 
            <sch:let name="error" value="."/>
            <sch:assert
                test=". =$orgIDs"
                ><sch:value-of select="$error"/> Error: Acceptable values are: 
                <sch:value-of select="orgIDs"/>
                
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>    
            
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
    
    
</sch:schema>






