require 'rails_helper'

describe Relationship do
  context 'when user who has not completed profile tries to friend someone' do
    expect(build(:relationship)).to_not be_valid
  end
end
