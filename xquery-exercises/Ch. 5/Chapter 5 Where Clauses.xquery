xquery version "3.1";

declare context item := fn:doc("https://raw.githubusercontent.com/dlschwartz/sandbox/master/XQ4HumBooks.xml") 
;



for $book in books/book 

where fn:contains($book/title, "Histor")
where fn:contains($book/date, "2013")

    let $author := $book/author 
    let $title := $book/title 
    let $press := $book/publisher/press
    let $date := $book/date

return <bibl>
{fn:concat($author, ".", $title, ".", $press, ".", $date) }
</bibl>