xquery version "3.1" ;

let $persName1:= ("Shinpei Goto")
let $persName2:= ("Gentaro Kodama")
let $persname3:= ("Kenjiro Den") 

let $join-name:= function ($persName1 as xs:string, $persName2 as xs:string, $persname3 as xs:string) 
as xs:string 
{fn:concat($persName1,", ", $persName2, ", ", "and" , $persName3)
}

return $join-name ($persName1, $persName2, $persname3) 