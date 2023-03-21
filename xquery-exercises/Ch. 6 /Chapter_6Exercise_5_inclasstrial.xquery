xquery version "3.1" ;


let $names := ("Shinpei Goto", "Gentaro Kodama", "Kenijiro")

for $name in $names
return fn:tokenize($names, " ")












declare namespace tei="http://www.tei-c.org/ns/1.0";

declare function: local:construct-english-list  ($persName as xs:string, $forname as xs:string, $surname as xs:string?) 
as element (tei:persName) 