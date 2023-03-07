xquery version "3.1";

declare context item := fn:doc("https://raw.githubusercontent.com/dlschwartz/sandbox/master/XQ4HumBooks.xml") 
;

for $books in books/book

return $books/title