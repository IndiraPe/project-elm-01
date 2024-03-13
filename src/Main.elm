
module Main exposing (..)

-- Imports

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


-- Types

type alias Model = 
    { prueba: String
    }

type Msg
    = Increment
    | Decrement

-- Initial Model

initialModel : Model
initialModel = {
                prueba = "Hola mundo"
                }


-- Update

update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { model | prueba = model.prueba ++ " uwu"}

        Decrement ->
            { model | prueba = model.prueba ++ " owo"}


-- Views

view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (model.prueba) ]
    , button [ onClick Increment ] [ text "+" ]
    ]


-- Subscriptions

-- Main

main : Program () Model Msg
main =
  Browser.sandbox
    { init = initialModel
    , view = view
    , update = update
    }