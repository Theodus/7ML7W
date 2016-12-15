USING: formatting kernel math math.ranges present prettyprint sequences ;
IN: fizzbuzz

: mult? ( x/str n -- ? ) over number? [ mod 0 = ] [ 2drop f ] if ;

: when-mult ( x/str n str -- x/str ) pick [ mult? ] 2dip ? ;

: fizz ( x/str -- x/str ) 3 "Fizz" when-mult ;
: buzz ( x/str -- x/str ) 5 "Buzz" when-mult ;
: fizzbuzz ( x/str -- x/str ) 15 "FizzBuzz" when-mult ;

: fizzbuzz-pipeline ( x -- str ) fizzbuzz fizz buzz present ;

: fizzbuzz-with-pipeline ( n -- seq ) [1,b] [ fizzbuzz-pipeline ] map ;

25 fizzbuzz-with-pipeline pprint
"\n" printf
