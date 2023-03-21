xquery version "3.1" ;

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare function local:construct-english-list ($fullName as xs:string*)
as element (tei:persname)
{
<persName xmnls="http://www.tei-c.org/ns/1.0">
    <forname>Shinpei</forname>
    <surname>Goto</surname>
  </persName>
  } ;
  
  local:construct-english-list ($persName)