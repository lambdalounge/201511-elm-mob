module FizzBuzz where

import Html exposing (Html)
import Html.Attributes as Attributes
import Html.Events as Events
import String

-- talk in questions
-- facilitator at the back of the room, off to the side, unless there's a purpose
-- work together first. before good code.

main : Html
main = Html.pre [] 
        [
          Html.text 
            (
              fizzbuzzinate 1 100
            )
        ]


fizzbuzzinate : Int -> Int -> String
fizzbuzzinate startingNum endingNum =
  List.map fizzbuzz [ startingNum .. endingNum ]
    |> String.join "\n"


fizzbuzz : Int -> String
fizzbuzz num = 
  if
    | (num % 3 == 0) && (num % 5 == 0) -> "fizzbuzz"
    | num % 3 == 0 -> "fizz"
    | num % 5 == 0 -> "buzz"
    | otherwise -> toString num

unchomp : String -> String
unchomp s = s ++ "\n"

