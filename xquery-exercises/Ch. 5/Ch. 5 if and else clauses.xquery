xquery version "3.1";

declare context item := fn:doc("https://raw.githubusercontent.com/dlschwartz/sandbox/master/XQ4HumBooks.xml");


for $book in books/book 

    let $name := $book/author
 
   


return 
<greetings> 
    {
    if ($name eq "Berel Lang") then 
    fn:concat("Hallo ", $name, "!")
    
    else fn:concat("Hi there ", $name, "!")
    
    }
</greetings>