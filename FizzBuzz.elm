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
              fizzbuzzinate 1 5
            )
        ]


fizzbuzzinate : Int -> Int -> String
fizzbuzzinate startingNum endingNum =
  List.map fizzbuzz [ startingNum .. endingNum ]
    |> String.join "\n"


fizzbuzz : Int -> String
fizzbuzz num = 
  case num of
    3 -> "fizz"
    5 -> "buzz"
    _ -> toString num

unchomp : String -> String
unchomp s = s ++ "\n"

