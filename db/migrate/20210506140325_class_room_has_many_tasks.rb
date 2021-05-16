class ClassRoomHasManyTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :class_room_id, :integer
  end
end
