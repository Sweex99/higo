class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tasks
  has_many :tasks, through: :marks
  has_many :tasks, foreign_key: :author_id
end
