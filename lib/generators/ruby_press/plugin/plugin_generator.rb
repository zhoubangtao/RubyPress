module RubyPress
  module Generators
    class PluginGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)

      def initialize(args, *options)
        super
        @plugin_path = "vendor/plugins/#{file_name}"


        #unless plugin_path
        #  raise Error, "Plugin name should be provided in arguments. For details run: rails plugin new --help"
        #end
      end

      def manifest
        empty_directory "#{@plugin_path}/app"
        #directory "#{plugin_path}/config"
        #directory "#{plugin_path}/db"
        #directory "#{plugin_path}/lib"
        #directory "#{plugin_path}/public"
        #directory "#{plugin_path}/tasks"
        #directory "#{plugin_path}/test"
        #
        #template 'README', "#{plugin_path}/README"
        #template 'init.rb', "#{plugin_path}/init.rb"
        #template 'plugin.rb', "#{plugin_path}/lib/#{file_name}.rb"
        #template  'desert_routes.rb', "#{plugin_path}/config/desert_routes.rb"
      end
    end
  end
end

