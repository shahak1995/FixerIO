require 'json'

# Main class in file
class ParseJson
  attr_accessor :json_data

  def initialize(json)
    @json_data = JSON.parse(json)
  end

  def retrieve_name
    @json_data['name']
  end

  def retrieve_birth_year
    @json_data['born']
  end

  def retrieve_title
    @json_data['titles']
  end
end
