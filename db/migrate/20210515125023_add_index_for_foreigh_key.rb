class AddIndexForForeighKey < ActiveRecord::Migration[6.1]
  def change
    add_index :class_rooms, :organization_id
    add_index :marks, :task_id
    add_index :marks, :user_id
    add_index :tasks, :class_room_id
  end
end
