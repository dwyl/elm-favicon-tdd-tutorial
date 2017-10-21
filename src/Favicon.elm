module Favicon exposing (fromUrl)

import Erl


fromUrl : String -> String
fromUrl urlString =
    let
        url =
            Erl.parse urlString
    in
        Erl.toString
            { url
                | path = [ "favicon.ico" ]
                , hash = ""
                , query = []
            }
