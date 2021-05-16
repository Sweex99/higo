class ClassRoom < ApplicationRecord
  belongs_to  :organization, optional: true
  belongs_to  :author, class_name: 'User', foreign_key: 'author_id'
  has_one     :class_room_settings
  has_many    :tasks

  has_many :studentships
  has_many :teacherships
  has_many :students,     through: :studentships
  has_many :teachers,     through: :teacherships

  def members
    members = students
    members << teachers
    members
  end
end
