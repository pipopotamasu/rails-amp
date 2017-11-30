require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsAmp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.generators.template_engine = :slim
    amp_css_paths = Dir.entries("#{config.root}/app/assets/stylesheets/amp").select { |name| name =~ /css$/ }.map { |name| "amp/#{name}" }
    config.assets.precompile += amp_css_paths

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
