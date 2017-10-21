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
                    |> Expect.equal "https://google.com/favicon.ico"
        ]
