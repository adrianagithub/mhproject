FactoryBot.define do
  factory :user do |f|
    f.first_name {Faker::Name.first_name}
    f.last_name {Faker::Name.last_name}
    f.email  {Faker::Internet.email}
    f.created_at { Time.now }
    f.updated_at { Time.now }
    f.password { "Pa$$word1" }
    f.password_confirmation { "Pa$$word1" }
  end
end
