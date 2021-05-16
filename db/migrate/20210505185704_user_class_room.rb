class UserClassRoom < ActiveRecord::Migration[6.1]
  def change
    create_table :user_rooms do |t|
      t.belongs_to :user
      t.belongs_to :class_room
      t.string     :role

      t.timestamps
    end
  end
end
