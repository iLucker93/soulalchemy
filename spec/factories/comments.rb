FactoryGirl.define do
  factory :comment do
    title { Faker::Lorem.word }
    comment { Faker::Lorem.sentence }
  end 
end
