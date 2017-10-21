module Tests exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)
import Favicon


suite : Test
suite =
    describe "Favicon"
        [ test "basic example" <|
            \() ->
                Favicon.fromUrl "https://google.com"
                    |> Expect.equal "https://google.com:443/favicon.ico"
        , test "URL with path" <|
            \() ->
                Favicon.fromUrl "https://github.com/audreyr/favicon-cheat-sheet"
                    |> Expect.equal "https://github.com:443/favicon.ico"
        , test "URL with hash" <|
            \() ->
                Favicon.fromUrl "https://example.com/index.html#hash"
                    |> Expect.equal "https://example.com:443/favicon.ico"
        , test "URL with query string" <|
            \() ->
                Favicon.fromUrl "https://example.com/index.html?query"
                    |> Expect.equal "https://example.com:443/favicon.ico"
        ]
