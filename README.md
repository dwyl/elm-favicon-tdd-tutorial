# elm-favicon

## Why?

Even though Elm's compiler tells when code does not work,
it's still _useful_ to know that we are covering all use-cases.
For that reason, writing tests is _essential_!

> Note: if you are totally new to TDD please see:
https://github.com/dwyl/learn-tdd

## What?

A gentle introduction to TDD in Elm
following Aaron VonderHaar's video:

[![youtube-video-screenshot](https://user-images.githubusercontent.com/194400/31855007-dd719050-b699-11e7-9bd4-180ca21e4b67.png)](https://youtu.be/WanSL2aduQ4 "click to play!")
https://youtu.be/WanSL2aduQ4

> The GitHub Repo: https://github.com/avh4/elm-favicon (_has code but no docs..._)
> All Credit / Copyright goes to @avh4
> Thanks to him for creating this superb video "let's code" tutorial!


## How?

### Create Project (Directory)

```sh
mkdir elm-favicon && cd elm-favicon && git init
```


### Install `elm-test` (_if you don't already have it_)

```sh
npm install elm-test -g
```

### Initialise Tests

```sh
elm-test init
```

### Run Dummy Tests

```sh
elm-test
```
Expect to see something like this:
![dummy-tests-passing](https://user-images.githubusercontent.com/194400/31855167-fdf623f6-b69c-11e7-88de-e21a711db360.png)

### Run Initial _Real_ Test (_Watch it Fail_!)

Once you have updated the code in the Tests.elm file (_as per the video_)

run the tests with the following command:
```sh
elm-test
```

You should see: <br />

![elm-test-failing](https://user-images.githubusercontent.com/194400/31855391-475ab912-b6a2-11e7-8c50-574728fe89cf.png)


> Note: If you see the error: "**I cannot find module 'Favicon'.**"
GOTO: https://github.com/dwyl/elm-favicon-tdd-tutorial/issues/1


### Make Tests Pass

changed `src/Favicon.elm` line 6 returning an _empty_ `String` to:
```elm
url ++ "/favicon.ico"
```
Returns the url you give it with the `"favicon.ico"` appended to it.
Re-run the tests and now they pass:

![tests-passing](https://user-images.githubusercontent.com/194400/31855430-16d37eea-b6a3-11e7-8d11-0a2b51286739.png)


### Create a More "Advanced" Test Case

This test checks if URL path is stripped before appending the `"favicon.ico"`:

```elm
, test "URL with path" <|
    \() ->
        Favicon.fromUrl "https://github.com/audreyr/favicon-cheat-sheet"
            |> Expect.equal "https://github.com/favicon.ico"
```


### Investigate Packages for URL Parsing > Chose: `sporto/erl`

Search http://package.elm-lang.org/ for "URL" ...
Decides to use: http://package.elm-lang.org/packages/sporto/erl

install:
```
elm-package install sporto/erl
```

Remember to _also_ install in the `./tests/elm-package.json`:
```
cd tests && elm-package install sporto/erl && cd ..
```

### Update Tests to include TCP Port in the Favicon URL

Given that `sporto/erl` includes the TCP port in the `url` entry when parsed,
the tests need to be updated to include the port. e.g:
```
https://google.com/favicon.ico
```
becomes:
```
https://google.com:443/favicon.ico
```

### Run Tests Final Time

Confirm all the tests are passing:

![all tests passing](https://user-images.githubusercontent.com/194400/31856531-107fff10-b6bb-11e7-8fca-e474e9a6fb52.png)


### Add Documentation (Comments) to Keep `elm-make` Happy

E.g:
```
{-| Gives the favicon URL for a given URL.
@docs fromUrl
-}
```
