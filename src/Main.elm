module Main exposing (main)

import Browser
import Html
import Other


main : Program () () ()
main =
    Browser.sandbox
        { init = ()
        , view = view
        , update = always identity
        }


view : () -> Html.Html ()
view _ =
    Other.add 1 2
        |> String.fromInt
        |> Html.text
