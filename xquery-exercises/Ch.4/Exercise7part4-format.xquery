xquery version "3.1";

declare context item := document {

<books>
<book>
<title>Primo Levi: The Matter of a Life</title>
<author>Berel Lang</author>
<date year="2013">November 26, 2013</date>
<publisher>
<city>New Haven</city>
<press>Yale University Press</press>
</publisher>
</book>
<book>
<title>Medical Bondage: Race,Gender, and the Origins of American Gynecology</title>
<author>Deirdre Cooper Owens</author>
<date year="2018">2018</date>
<publisher>
<city>Athens</city>
<press>University of Georgia</press>
</publisher>
</book>
<book>
<title>Bound in Wedlock: Slave and Free Black Marriage in the Nineteenth Century</title>
<author>Tera W. Hunter</author>
<date year="2017">2017</date>
<publisher>
<city>Cambridge</city>
<press>Harvard University Press</press>
</publisher>
</book>

<book>
<title>The Philippine War: 1899-1902</title>
<author>Brian Linn</author>
<date year="2000">2000</date>
<publisher>
<city>Lawrence</city>
<press>University Press of Kansas</press>
</publisher>
</book>


<book>
<title>Burgoyne of Saratoga</title>
<author>Gerald Howson</author>
<date year="1979">1979</date>
<publisher>
<city>New York City</city>
<press>Times Books</press>
</publisher>
</book>

</books>
};

/books/book/fn:concat(/books/book/author,".", " ",/book/date, ".")

