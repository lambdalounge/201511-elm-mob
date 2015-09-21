module FizzBuzz where

import Html exposing (Html)
import Html.Attributes as Attributes
import Html.Events as Events

-- talk in questions
-- facilitator at the back of the room, off to the side, unless there's a purpose
-- work together first. before good code.

main : Html
main = Html.pre [] 
        [
          Html.text 
            (
                 (unchomp (fizzbuzz 1))
              ++ (unchomp (fizzbuzz 2))
              ++ (unchomp (fizzbuzz 3))
            )
        ]

fizzbuzz : Int -> String
fizzbuzz num = 
  case num of
    3 -> "fizz"
    _ -> toString num

unchomp : String -> String
unchomp s = s ++ "\n"

