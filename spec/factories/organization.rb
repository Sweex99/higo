FactoryBot.define do
  factory :organization do
    title       { Faker::Company.industry }
    description { Faker::Lorem.paragraph(sentence_count: 8) }
  end
end