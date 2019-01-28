require 'json'
require 'httparty'
require_relative '../lib/parse_json'
require_relative '../lib/got_io'

RSpec.configure do |config|
  config.formatter = :documentation
end
