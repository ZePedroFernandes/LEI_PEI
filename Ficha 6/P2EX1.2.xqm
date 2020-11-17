module namespace fp6 = 'fp6/ex1';
        
declare 
        %rest:path("/books")
        %rest:consumes("application/xml","text/xml")
        %rest:POST("{$body}")
        %output:method('xml')
        function fp6:sumQuery($body as document-node()){
          let $books := $body//book
          return element bookNumber{count($books)}
        };
        