FactoryBot.define do
  factory :user do
    name         { FFaker::Lorem.name }
    email        { FFaker::Internet.email }
    password     {FFaker::Internet.password(min_length: 8)}
  end
 end