xquery version "3.1";

declare namespace tei = "http://www.tei-c.org/ns/1.0";

declare function local:front($nodes as node()*) {
    for $node in $nodes
    return
        typeswitch ($node)
            case text() return $node
            case element (tei:TEI) return local:front($node/tei:text/node())
            case element (tei:front) return <div>{local:front($node/node())}</div>
            case element (tei:docAuthor) return <h1 class="title">{local:front($node/node())}</h1>
            case element (tei:docTitle) return <h2 class="title">{local:front($node/tei:titlePart/node())}</h2>
            case element (tei:div) return local:front($node/node())
            case element (tei:listPerson) return <ul>{local:front($node/node())}</ul>
            case element (tei:person) return <li>{local:front($node/node())}</li>
                (:if ($node[tei:occupation]) then <li>{local:front($node/tei:persName/node())}, {local:front($node/tei:occupation/node())}, {local:front($node/tei:residence/node())}</li>
                else <li>{local:front($node/tei:persName/node())}, {local:front($node/tei:residence/node())}</li>:)
            case element (tei:persName) return 
                <a href="{concat("./StandoffHTML.html", $node/@ref)}">{local:body($node/node())}</a>
            case element (tei:residence) return concat(", ", local:front($node/node()))
            case element (tei:occupation) return concat(", ", local:front($node/node()))

            default return ()
};

declare function local:body($nodes as node()*) {
    for $node in $nodes
    return
        typeswitch ($node)
            case text() return $node
            case element (tei:TEI) return local:body($node/tei:text/tei:body/node())
            case element (tei:div) return <div>{local:body($node/node())}</div>
            case element (tei:head) return
                if ($node[parent::tei:div/@n eq "1"]) then <h2>{local:body($node/node())}</h2>
                else <h3>{local:body($node/node())}</h3>
            case element (tei:p) return <p>{local:body($node/node())}</p>
            case element (tei:list) return <ul>{local:body($node/node())}</ul>
            case element (tei:item) return <li>{local:body($node/node())}</li>
            case element (tei:title) return local:body($node/node())
            case element (tei:name) return local:body($node/node())
            case element (tei:measure) return local:body($node/node())
            case element (tei:persName) return 
                <a href="{concat("./StandoffHTML.html", $node/@ref)}">{local:body($node/node())}</a>
            case element (tei:placeName) return 
                <a href="{concat("./StandoffHTML.html", $node/@ref)}">{local:body($node/node())}</a>            
            
            default return ()
};

let $doc := tei:TEI

return

    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title>{$doc//tei:teiHeader//tei:titleStmt/tei:title/text()}</title>
            <link rel="stylesheet" href="./CSS/Project4thCitizens.css"></link>
            <meta name="viewport" content="width=device-width" initial-scale="1.0"></meta>
        </head>
        <body>
            <div>
                {local:front($doc)}
            </div>
            <div>
                {local:body($doc)}
            </div>
        </body>
    </html>
