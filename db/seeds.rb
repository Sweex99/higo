require 'factory_bot_rails'

current_user = FactoryBot.create(:current_user) # current_user, try login with him

3.times do |i|
  FactoryBot.create(:user)
  FactoryBot.create(:class_room)
  FactoryBot.create(:task)
  puts 'Created user: ' + i.to_s
end

ClassRoom.first.students << User.first
ClassRoom.first.teachers << User.third
ClassRoom.second.teachers << User.second
ClassRoom.second.teachers << User.third
