require 'json'
require_relative 'parse_json'
require 'httparty'

class FixerIo
  attr_accessor :latest_fixer_data

  def retrieve_jon_snow_data
    @latest_fixer_data = ParseJson.new(HTTParty::get('https://anapioficeandfire.com/api/characters/583').body).json_data
  end

  def retrieve_name
    @latest_fixer_data['name']
  end

  def retrieve_birth_year
    @latest_fixer_data['born']
  end
end
