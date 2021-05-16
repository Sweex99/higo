class Teachership < ActiveRecord::Base
  belongs_to :class_room
  belongs_to :teacher, class_name: 'User', foreign_key: 'teacher_id'
end
