# nchan-buildpack

This Heroku buildpack will automatically build, configure, and run [nchan][0] for you.

## Usage

This buildpack will only be triggered if your app (deployed to Heroku) contains a `nchan.conf.erb` file at its root. See below for configuration options. If you don't know what to configure, you can simply copy the [`nchan.conf.erb` template][6].

To use the buildpack, run:
~~~sh
$ heroku buildpacks:add https://github.com/andjosh/nchan-buildpack.git
~~~

## Configuration/Options

~~~sh
# env variables available (with default) in the default nchan.conf
# set upon web server/process start
NCHAN_WORKERS=4
NCHAN_WORKER_CONNECTIONS=1024
NCHAN_SUB_TIMEOUT=25
PORT=<set by heroku>
~~~

See [configuration directives for nchan][5] to populate your own `nchan.conf.erb`.

If you decide to use your own `Procfile` (e.g. you want to run a [local auth server for nchan][7]), be sure to also launch nchan by executing `bin/boot` and pass in your sister app launch command. Here's an example running a node server:

~~~sh
web: bin/boot npm start
~~~

## Testing

~~~sh
git clone https://github.com/andjosh/nchan-buildpack.git
git clone https://github.com/heroku/heroku-buildpack-testrunner.git
~~~

Once you have both installed (and `shunit2`), follow the directions in the [Heroku Buildpack testrunner README][4].

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
[5]: https://github.com/slact/nchan#configuration-directives
[6]: https://github.com/andjosh/nchan-buildpack/blob/master/scripts/config/templates/nchan.conf.erb
[7]: https://github.com/slact/nchan#securing-channels
