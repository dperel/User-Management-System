require 'spec_helper'

feature 'External request' do
  it 'authenticates user via Twitter' do
    uri = URI("https://www.api.twitter.com/auth")

    response = Net::HTTP.get(uri)

    expect(response).to be_an_instance_of(String)
  end
end
