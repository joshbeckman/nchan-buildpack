# nchan-buildpack

This Heroku buildpack will automatically build, configure, and run [nchan][0] for you.

## Usage

This buildpack will only be triggered if your app (deployed to Heroku) contains a `nchan.json` file at its root. See below for configuration options.

To use the buildpack, run:
~~~sh
$ heroku buildpacks:add https://github.com/andjosh/nchan-buildpack.git
~~~

## Configuration/Options

TODO

## Testing

~~~sh
git clone https://github.com/andjosh/nchan-buildpack.git
git clone https://github.com/heroku/heroku-buildpack-testrunner.git
~~~

Once you have both installed, follow the directions in the [Heroku Buildpack testrunner README][4].

~~~sh
cd heroku-buildpack-testrunner
./bin/run ../nchan-buildpack
~~~

## Acknowledgements

- [nchan][0]
- Heroku's [static/nginx buildpack][1]
- Heroku [buildpack documentation][2]
- [nginx buildpack][3]

[0]: https://github.com/slact/nchan
[1]: https://github.com/heroku/heroku-buildpack-static
[2]: https://devcenter.heroku.com/articles/buildpack-api
[3]: https://github.com/ryandotsmith/nginx-buildpack
[4]: https://github.com/heroku/heroku-buildpack-testrunner
