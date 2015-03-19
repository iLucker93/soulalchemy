require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'valid comment' do
    expect(FactoryGirl.build(:comment)).to be_valid
  end

  it 'not valid with empty comment' do
    expect(FactoryGirl.build(:comment, comment: nil)).to be_invalid
  end

end
