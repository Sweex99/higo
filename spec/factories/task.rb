FactoryBot.define do
  factory :task do
    title       { Faker::Company.industry }
    description { Faker::Lorem.paragraph(sentence_count: 5) }
    class_room  { ClassRoom.third }
  end
end
