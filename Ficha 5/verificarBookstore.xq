declare function local:validateBookstore($bookStore as element()){
          validate:xsd($bookStore,"C:\Program Files (x86)\BaseX\webapp\Ficha6\bookstore.xsd")
        };
        
declare option output:omit-xml-declaration "no";

let $bookstore := //bookstore
return local:validateBookstore($bookstore)