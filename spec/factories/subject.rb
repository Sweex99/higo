FactoryBot.define do
  factory :subject do
    title { Faker::Book.genre }
  end
end
