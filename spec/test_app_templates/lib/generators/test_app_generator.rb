require 'rails/generators'

class TestAppGenerator < Rails::Generators::Base
  source_root "../../spec/test_app_templates"

  def install_engine
    generate 'curation_concerns:install'
  end

  def comment_out_web_console
    gsub_file "Gemfile",
              "gem 'web-console'", "# gem 'web-console'"
  end

  def run_migrations
    rake "db:migrate"
  end
end
