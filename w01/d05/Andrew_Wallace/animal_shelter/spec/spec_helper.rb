# For our specs to run, we need to require the Ruby classes we’re testing
require_relative '../classes/animal'
require_relative '../classes/shelter'
require_relative '../classes/person'

# Configure RSpec
RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end
