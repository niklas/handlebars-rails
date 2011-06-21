# Handlebars-Rails

Easily setup and use handlebars.js with rails 3.1

## Rails 3.1 setup
This gem requires the use of rails 3.1 and the use of sprockets for asset packaging.

This gem vendors the latest version of handlebars.js for Rails 3.1 and greater. The files will be added to the asset pipeline and available for you to use.
You need to add the following line to the file `app/assets/javascripts/application.js`:

    //= require handlebars

### Installation

In your Gemfile, add this line:

  gem "handlebars-rails"

Then run `bundle install`. You're done!

## JavaScript Templates

This gem provides the ability to compile javascript templates using [handlebars templates](https://github.com/wycats/handlebars.js)
and makes them available on the client on a global JST object.

Any file with the extension '.js.hbs' will get compiled using [handlebars templates](https://github.com/wycats/handlebars.js)

example `app/assets/javascripts/hello.js.hbs`:

    Hello {{name}}!

will be compiled and available on the client as JST.hello

    JST.hello({name: "Tammy"});

would render:

    Hello Tammy!

