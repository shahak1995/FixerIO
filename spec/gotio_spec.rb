require 'spec_helper'

describe 'gameofthrones api' do
  before(:all) do
    @got = GotIo.new
    @got.retrieve_jon_snow_data
  end

  it 'should be a hash' do
    expect(@got.got_data).to be_kind_of(Hash)
  end

  it 'should contain the name as Jon Snow' do
    expect(@got.retrieve_name).to eq 'Jon Snow'
  end

  it 'should output the birth year of Jon Snow' do
    expect(@got.retrieve_birth_year).to eq 'In 283 AC'
  end
end
