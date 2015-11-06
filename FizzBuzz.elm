module FizzBuzz where

import Html exposing (Html)
import Html.Attributes as Attributes
import Html.Events as Events

main : Html
main = 
  Html.pre [Attributes.style [("margin", "10px")]]
   [ 
     Html.text " Hello Lambda Lounge" 
   ]
 