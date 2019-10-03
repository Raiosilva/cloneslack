FactoryBot.define do
  factory :team do
    slug    { FFaker::Team.name }
    user
  end
 end