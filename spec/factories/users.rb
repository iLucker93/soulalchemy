FactoryGirl.define do
  factory :user do
    username { Faker::Name.name }
    email { Faker::Internet.safe_email }
    password {Faker::Lorem.characters(9)}
  end 
end
