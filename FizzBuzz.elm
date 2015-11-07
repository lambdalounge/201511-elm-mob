module FizzBuzz where

import Html exposing (Html)
import Html.Attributes as Attributes
import Html.Events as Events

fizz : Int -> String
fizz x = if (0 == x % 3) then "Fizz" else ""

buzz : Int -> String
buzz x = if (0 == x % 5) then "Buzz" else ""

fizzbuzz : Int -> String
fizzbuzz x = fizz x ++ buzz x

fizzbuzzornum : Int -> String
fizzbuzzornum x = let maybe_strings = fizzbuzz x in
  if maybe_strings == "" then toString x else maybe_strings 

main : Html
main = 
  Html.pre [Attributes.style [("margin", "10px")]]
     (List.map (Html.text << (((++)"\n")) << fizzbuzzornum) [1..100])
   
 