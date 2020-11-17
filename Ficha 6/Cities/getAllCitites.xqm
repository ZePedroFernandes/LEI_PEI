module namespace page='http://basex.org/examples/web-page';
declare namespace c='http://www.oorsprong.org/websamples.countryinfo';

declare 
        %rest:path("/allCities")
        %rest:GET
        function page:returnCities() as element(){
          element cities{
            for $x in db:open("cities")//c:CapitalCityResult/text()
            return <city>{$x}</city>
            }
        };