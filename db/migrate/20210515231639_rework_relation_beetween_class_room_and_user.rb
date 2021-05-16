class ReworkRelationBeetweenClassRoomAndUser < ActiveRecord::Migration[6.1]
  def change
    create_table :studentships do |t|
      t.integer :class_room_id
      t.integer :student_id

      t.timestamps
    end

    create_table :teacherships do |t|
      t.integer :class_room_id
      t.integer :teacher_id

      t.timestamps
    end

    drop_table :user_rooms
  end
end
