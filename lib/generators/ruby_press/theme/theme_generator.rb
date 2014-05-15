module RubyPress
  module Generators
    class ThemeGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)

      attr_accessor :theme_path

      def initialize(args, *options)
        super
        @theme_path = "vendor/themes/#{file_name}"


        #unless plugin_path
        #  raise Error, "Plugin name should be provided in arguments. For details run: rails plugin new --help"
        #end
      end

      def rakefile
        template "Rakefile", "#{theme_path}/Rakefile"
      end

      def readme
        copy_file "README.rdoc", "#{theme_path}/README.rdoc"
      end

      #def gemfile
      #  template "Gemfile", "#{theme_path}/Gemfile"
      #end

      def configru
        template "config.ru", "#{theme_path}/config.ru"
      end

      def gitignore
        template "gitignore", "#{theme_path}/.gitignore"
      end

      #def app
      #  directory 'app', '#{theme_path}/app'
      #
      #  keep_file  '#{theme_path}/app/assets/images'
      #  keep_file  '#{theme_path}/app/mailers'
      #  keep_file  '#{theme_path}/app/models'
      #
      #  keep_file  '#{theme_path}/app/controllers/concerns'
      #  keep_file  '#{theme_path}/app/models/concerns'
      #end

      def bin
        directory "bin", "#{theme_path}/bin" do |content|
          "#{shebang}\n" + content
        end
        chmod "#{theme_path}/bin", 0755 & ~File.umask, verbose: false
      end

      #def config
      #  empty_directory "#{theme_path}/config"
      #
      #  inside "config" do
      #    template "routes.rb", "#{theme_path}/config/routes.rb"
      #    template "application.rb", "#{theme_path}/config/application.rb"
      #    template "environment.rb", "#{theme_path}/config/environment.rb"
      #    template "secrets.yml", "#{theme_path}/config/secrets.yml"
      #
      #    directory "environments", "#{theme_path}/config/environments"
      #    directory "initializers", "#{theme_path}/config/initializers"
      #    directory "locales", "#{theme_path}/config/locales"
      #  end
      #end

      #def lib
      #  empty_directory 'lib'
      #  empty_directory_with_keep_file 'lib/tasks'
      #  empty_directory_with_keep_file 'lib/assets'
      #end
      #
      #def public_directory
      #  directory "public", "public", recursive: false
      #end
      #
      #def test
      #  empty_directory_with_keep_file 'test/fixtures'
      #  empty_directory_with_keep_file 'test/controllers'
      #  empty_directory_with_keep_file 'test/mailers'
      #  empty_directory_with_keep_file 'test/models'
      #  empty_directory_with_keep_file 'test/helpers'
      #  empty_directory_with_keep_file 'test/integration'
      #
      #  template 'test/test_helper.rb'
      #end

    end
  end
end
