require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it "has a not valid factory with empty username" do
    expect(FactoryGirl.build(:user, username: nil)).to be_invalid
  end
end
