module Handlebars
  module Rails
  end
end

require 'handlebars/tilt/handlebars_template'
require 'handlebars/rails/template_handlers'
require 'handlebars/rails/version'
unless ::Rails.version < "3.1"
  require 'handlebars/rails/engine'
end

