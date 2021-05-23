class ClassRoom < ApplicationRecord
  belongs_to  :organization, optional: true
  belongs_to  :author, class_name: 'User', foreign_key: 'author_id'
  has_one     :class_room_settings
  has_many    :tasks
  has_many    :user_rooms
  has_many    :users, through: :user_rooms, source: :user

  has_many    :students_rooms, -> { where(role: 'student') }, class_name: 'UserRoom'
  has_many    :students, through: :students_rooms, source: :user

  has_many    :teachers_rooms, -> { where(role: 'teacher') }, class_name: 'UserRoom'
  has_many    :teachers, through: :teachers_rooms, source: :user

end
