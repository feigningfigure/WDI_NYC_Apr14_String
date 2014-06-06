require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SmoketopApp
  APPLICATION_TITLE = "Doctor Smoketop's Brobdingnagian Bestiary"

  class Application < Rails::Application
  end
end
