
<!--  

<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    
    
    <sch:pattern>
        <sch:rule context="tei:placeName/@ref">
            <sch:assert test=". ='#place' or .='#something'">
                This @ref attribute must include a "#placexxx".
            </sch:assert>
        </sch:rule>
    </sch:pattern>  
    
</sch:schema>

-->





<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"> <!-- allows for you to copy and paste your Schema into the ODD file -->
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    <sch:pattern>
        <sch:rule context="// tei:persName/@type">
            <sch:assert test=".='J.O. Sams'"></sch:assert>
            <!--  <sch:assert test=". = '#ebrooks'"></sch:assert>-->  <!-- . means where we are -->
            <!-- go to red push pin in the XML document. Click it, associate the Schema document. Test by looking at what you did --> <!-- use a schemmatron rule that looks to Standoff and constrains Ref. Point out to Standoff and make it so that the only values I can put on a Ref are values taht come from a Standoff. -->
        </sch:rule>
        <sch:rule context="// tei:placeName/@type">
            
        </sch:rule>
        <sch:rule context="// tei:name/@type">
            
        </sch:rule>
        
    <!--    <sch:pattern>
            <sch:rule context="tei:placeName/@ref">
                <sch:assert test=". ='#place' or .='#something'">
                    This @ref attribute must include a "#placexxx".
                </sch:assert>
            </sch:rule>
        </sch:pattern>  
        
        
        <!--  <sch:let name="taxonomyAllURIs"-->
        <!--    value= "$ti//listURI[@type='taxonomyAllURIs']/uri""/> -->
        
        <!--  <sch:let name="STO"  value="doc ('")-->
    </sch:pattern>
</sch:schema>