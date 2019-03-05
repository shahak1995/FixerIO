require 'json'
require_relative 'parse_json'
require 'httparty'

# Main Class within file
class GotIo
  attr_accessor :got_data

  # Method to fetch Jon Snow Data
  def retrieve_jon_snow_data
    # Fetching data from the API
    @got_data = ParseJson.new(HTTParty::get('https://anapioficeandfire.com/api/characters/583').body).json_data
  end

  # Method to fetch the data from attribute name
  def retrieve_name
    @got_data['name']
  end

  # Method to fetch the data from attribute born
  def retrieve_birth_year
    @got_data['born']
  end

  # Method to fetch data from attribute titles
  def retrieve_title
    @got_data['titles']
  end
end
