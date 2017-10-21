module Favicon exposing (fromUrl)


fromUrl : String -> String
fromUrl url =
    url ++ "/favicon.ico"
