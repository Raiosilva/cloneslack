FactoryBot.define do
  factory :channel do
    slug { Faker::Lorem.word }
    team
    user { team.user }
  end
 end