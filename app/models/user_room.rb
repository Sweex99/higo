class UserRoom < ActiveRecord::Base
  belongs_to :class_room
  belongs_to :user

  attribute :role, :string, default: 'student'
  enum roles: [:student, :teacher]

  validates :class_room_id, presence: true
  validates :user_id,       presence: true
  validate  :user_exist_in_class_room

  def user_exist_in_class_room
    unless UserRoom.where(class_room_id: class_room_id, user_id: user_id).blank?
      errors.add(:class_room, 'Currently, you are already exist in this class room')
    end
  end
end
