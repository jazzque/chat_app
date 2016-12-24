require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SimpleChat
  class Application < Rails::Application
    config.generators do |g|
      g.test_framework :rspec, :views => false, :fixture => true
      # g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      # g.form_builder :simple_form
      # g.template_engine :haml
      # Don't generate trash like assets view specs and helpers automatically
      g.assets = false
      g.view_specs = false
      g.helper = false
    end

    # config.active_record.observers = begin
    #   observers_path = Rails.root.join('app/observers/').to_s
    #   Dir["#{observers_path}**/*.rb"].map do |f|
    #     f.gsub(observers_path.to_s, '').gsub(/\.rb\z/, '')
    #   end
    # end

    config.active_record.raise_in_transactional_callbacks = true

    # config.before_configuration do
    #   require_relative 'plugin_loader'
    #   Plugin.load
    # end

    # config.to_prepare do
    #   Devise::SessionsController.layout 'single_page'
    #   Devise::ConfirmationsController.layout 'single_page'
    # end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Custom directories with classes and modules you want to be autoloadable.
    # config.autoload_paths += %W(#{config.root}/lib #{config.root}/app/models/query_objects #{config.root}/app/models/form_objects #{config.root}/app/models/searches)
    # config.eager_load_paths += %W(#{config.root}/lib #{config.root}/app/models/query_objects #{config.root}/app/models/form_objects #{config.root}/app/models/searches)

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Minsk'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.default_locale = :ru
    # config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')].sort
    # config.i18n.available_locales = [:ru, :en]

    # I18n.enforce_available_locales = false

    ActiveRecord::Migrator.migrations_path = File.join(Rails.root, "db/migrate")
  end
end
