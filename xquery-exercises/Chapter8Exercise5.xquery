xquery version "3.1";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare variable $doc := 
<div xmlns="http://www.tei-c.org/ns/1.0">
  
        <lg>
            <l>—“a man, a ruler, and a sage;</l>
            <l>A truly worthy model of the age.”</l>
        </lg>
</div>;

declare function local:transform($originals as node()*) {
    for $original in $originals
    return
        typeswitch ($original)
            case text() return $original
            case element(tei:div) return
                <div>{ local:transform($original/node()) }</div>
            case element(tei:lg) return
                <ol>{ local:transform($original/node()) }</ol>
            case element(tei:quote) return
                <li>{ local:transform($original/node()) }</li>
          
         
                
            default return $original
};

local:transform($doc)