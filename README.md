# elm-favicon
Following along with Aaron VonderHaar's video:
[![youtube-video-screenshot](https://user-images.githubusercontent.com/194400/31855007-dd719050-b699-11e7-9bd4-180ca21e4b67.png)](https://youtu.be/WanSL2aduQ4 "click to play!")
https://youtu.be/WanSL2aduQ4

Repo: https://github.com/avh4/elm-favicon (_has code but no docs..._)


## How?

### Create Project (Directory)

```sh
mkdir elm-favicon && cd elm-favicon && git init
```


### Install `elm-test` (_if you don't already have it_)

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

You should see:
![elm-test-failing](https://user-images.githubusercontent.com/194400/31855391-475ab912-b6a2-11e7-8c50-574728fe89cf.png)


### Make Tests Pass

changed `src/Favicon.elm` line 6 returning an _empty_ `String` to:
```elm
url ++ "/favicon.ico"
```
Returns the url you give it with the `"favicon.ico"` appended to it.
Re-run the tests and now they pass:

![tests-passing](https://user-images.githubusercontent.com/194400/31855430-16d37eea-b6a3-11e7-8d11-0a2b51286739.png)
