require 'factory_bot_rails'
require 'faker'

FactoryBot.create(:current_user) # current_user, try login with him

3.times do |i|
  user       = FactoryBot.create(:user)
  class_room = FactoryBot.create(:class_room)
  task       = FactoryBot.create(:task)

  puts 'Created user: ' + i.to_s
end
