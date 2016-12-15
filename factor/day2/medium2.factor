USING: formatting kernel math math.parser random readline ;
IN: examples.numberguess

100 random
dup "Number: %d\n" printf
"Enter a number: " readline string>number
2dup
< [ 
  "Higher\n" printf
  2drop 
] [
  = [
    "Winner\n" printf
  ] [
    "Lower\n" printf
  ] if 
] if
