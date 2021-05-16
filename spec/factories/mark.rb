FactoryBot.define do
  factory :mark, class: 'Mark' do
    number { 3 }
    user
  end
end