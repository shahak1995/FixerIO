require 'spec_helper'

describe 'gameofthrones api' do
  before(:all) do
    @got = GotIo.new
    @got.retrieve_jon_snow_data
  end

  # Test One - Hash
  it 'should be a hash' do
    expect(@got.got_data).to be_kind_of(Hash)
  end

  # Test Two - Name
  it 'should contain the name as Jon Snow' do
    expect(@got.retrieve_name).to eq 'Jon Snow'
  end

  # Test Three - Birth Year
  it 'should output the birth year of Jon Snow' do
    expect(@got.retrieve_birth_year).to eq 'In 283 AC'
  end

  # Test Four - Title
  it 'should output the titles of Jon Snow' do
    expect(@got.retrieve_title).to eq "Lord Commander of the Night's Watch"
  end
end
