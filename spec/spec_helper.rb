$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "omniauth/polity"
require "mocha/api"
require "pry"

RSpec.configure do |config|
  config.mock_with :mocha
end
