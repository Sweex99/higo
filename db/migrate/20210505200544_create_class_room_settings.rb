class CreateClassRoomSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :class_room_settings do |t|
      t.integer     :max_mark
      t.string      :avatar
      t.string      :logo_color
      t.string      :logo
      t.boolean     :gallery
      t.belongs_to  :class_room

      t.timestamps
    end
  end
end
