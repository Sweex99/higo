FactoryBot.define do
  factory :user do
    email                 { Faker::Internet.email }
    password              { 'test123' }
    password_confirmation { 'test123' }
    type                  { 'User' }
  end

  factory :current_user, class: 'User' do
    email                 { 'test123@gmail.com' }
    password              { 'test123' }
    password_confirmation { 'test123' }
    type                  { 'User' }
  end
end