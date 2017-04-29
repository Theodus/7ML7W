module Easy

import Data.Vect

greater : Int -> List Int -> List Int
greater n = filter (\x => x > n)


everyOther : List a -> List a
everyOther (x :: _ :: xs) = x :: everyOther xs
everyOther (x :: xs) = x :: everyOther xs
everyOther [] = []


data Suit = Spades | Clubs | Hearts | Diamonds

record Card where
  constructor MkCard
  value: Nat
  suit: Suit

Deck : Type
Deck = Vect 52 Card

newDeck : Vect 52 Card
newDeck =
  fromList [MkCard v s |
    s <- [Spades, Clubs, Hearts, Diamonds],
    v <- [1..13]]
