require 'tilt'
require 'sprockets'

module Handlebars::Rails
  class HandlebarsTemplate < Tilt::Template
    self.default_mime_type = 'text/css'

    def self.engine_initialized?
      defined?(::Handlebars::Template)
    end

    def initialize_engine
      require_template_library 'handlebars/tilt/handlebars_template'
    end

    def prepare
    end

    def evaluate(scope, locals, &block)
      ::Handlebars::Template.render(name, data)
    end
  end
end

Sprockets::Engines #invoke autoloading
Sprockets.register_engine '.hbs', Handlebars::Rails::HandlebarsTemplate

