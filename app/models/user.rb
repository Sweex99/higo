class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :marks
  has_many :tasks, through: :marks, foreign_key: :author_id
  has_many :user_rooms
  has_many :class_rooms, through: :user_rooms
end
