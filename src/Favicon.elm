module Favicon exposing (fromUrl)

import Erl


fromUrl : String -> Maybe String
fromUrl urlString =
    let
        url =
            Erl.parse urlString
    in
        if url.protocol == "https" || url.protocol == "http" then
            Just <|
                Erl.toString
                    { url
                        | path = [ "favicon.ico" ]
                        , hash = ""
                        , query = []
                        , hasTrailingSlash = False
                    }
        else
            Nothing
