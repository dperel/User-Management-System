require 'rails_helper'

describe User do
  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

  it 'is invalid with an incorrect email confirmation' do
    expect(build(:user, email_confirmation: nil)).to_not be_valid
  end

  it 'is invalid if terms of service are not accepted' do
    expect(build(:user, terms_of_service: false)).to_not be_valid
  end

end
