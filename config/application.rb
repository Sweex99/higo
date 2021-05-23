require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Higo
  class Application < Rails::Application
    config.app                            = config_for(:config)
    config.i18n.default_locale            = :en
    config.time_zone                      = 'UTC'
    config.generators.scaffold_stylesheet = false
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.to_prepare do
      Devise::SessionsController      .layout('authentication')
      Devise::RegistrationsController .layout('authentication')
    end

    ActionDispatch::Callbacks.after do
      # Reload the factories
      return unless (Rails.env.development? || Rails.env.test?)

      unless FactoryBot.factories.blank? # first init will load factories, this should only run on subsequent reloads
        FactoryBot.factories.clear
        FactoryBot.find_definitions
      end

    end
  end
end
