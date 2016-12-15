import Html exposing (text)

prod : List Int -> Int
prod xs = 
  case xs of
    x::rst -> x * (prod rst)
    [] -> 1

main =
  List.range 1 100 |> prod |> toString |> text
