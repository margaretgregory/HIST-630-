xquery version "3.1" ;




fn:tokenize("Digital Humanities", "i") 

fn:substring("Digital Humanities", 9, 18) 

fn:tokenize(fn:substring("Digital Humanities", 9, 18), "i")