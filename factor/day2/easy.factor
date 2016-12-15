USING: kernel sequences tools.test ;
IN: examples.strings

: palindrome ( s -- b )
  dup reverse =
;

{ t } [ "racecar" palindrome ] unit-test
{ f } [ "yup" palindrome ] unit-test
