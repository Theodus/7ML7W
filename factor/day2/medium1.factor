USING: kernel math sequences tools.test ;
IN: examples.sequences

: find-first ( s p -- e ) 
  find swap drop
; inline

{ 3 } [ { 1 2 3 4 } [ 2 > ] find-first ] unit-test
