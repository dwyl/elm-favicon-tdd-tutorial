module Tests exposing (..)

import Expect exposing (Expectation)
import Favicon
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite : Test
suite =
    describe "Favicon"
        [ test "basic example" <|
            \() ->
                Favicon.fromUrl "https://google.com"
                    |> Expect.equal "https://google.com/favicon.ico"
        ]
