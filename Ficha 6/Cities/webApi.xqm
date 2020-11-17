module namespace page='http://basex.org/examples/web-page';

declare %updating 
        %rest:path("/addcity")
        %rest:consumes("application/xml", "text/xml")
        %rest:POST("{$body}")
function page:addToDatabase($body as document-node()) {
    db:add("cities",$body,"city.xml")
};