module RubyPress
  module Generators
    class ThemeGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)
    end
  end
end
