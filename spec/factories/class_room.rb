FactoryBot.define do
  factory :class_room do
    title       { Faker::Company.industry }
    description { Faker::Lorem.paragraph(sentence_count: 5) }
    author      { User.first }
    teachers    { [create(:user)] }
    students    { [create(:user)] }
  end
end