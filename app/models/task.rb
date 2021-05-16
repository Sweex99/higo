class Task < ApplicationRecord
  has_many :marks
  has_many :users, through: :marks
  belongs_to :class_room
end
