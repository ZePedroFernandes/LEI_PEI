module namespace fp6 = 'fp6/ex1';

declare %rest:path("/sumURL/{$number1}/{$number2}")
        %rest:GET
        function fp6:sum($number1,$number2){
          $number1 + $number2
        };
        
declare %rest:path("/sumQuery")
        %rest:query-param("number1","{$number1}")
        %rest:query-param("number2","{$number2}")
        function fp6:sumQuery($number1,$number2){
          $number1 + $number2
        };
        
        