USING: formatting io math math.functions rpn kernel ;
IN: easy

: main ( -- )
  3 3 * 4 4 * + 
  "%d\n" printf

  3 sq 4 sq + sqrt
  "%d\n" printf

  1 2 dupd
  "%d %d %d\n" printf
;

MAIN: main
