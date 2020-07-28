require_relative 'boot'

require 'rails/all'
# require 'active_graph/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Tapp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    # config.neo4j.driver.url = ENV['NEO4J_URL'] || 'neo4j://localhost:7687'
    # config.neo4j.driver.username = 'user'
    # config.neo4j.driver.password = '1'
     # config.generators { |g| g.orm :active_graph }
    # config.neo4j.driver.url
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
