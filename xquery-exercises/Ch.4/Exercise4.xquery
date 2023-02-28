xquery version "3.1";

declare context item := document {

<name>
    <forename>Margaret</forename>
    <surname>Gregory</surname>
</name>
};

/name/surname/fn:string-length(.) 