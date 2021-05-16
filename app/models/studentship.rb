class Studentship < ActiveRecord::Base
  belongs_to :class_room
  belongs_to :student, class_name: 'User', foreign_key: 'student_id'
end
