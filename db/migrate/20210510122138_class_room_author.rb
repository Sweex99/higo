class ClassRoomAuthor < ActiveRecord::Migration[6.1]
  def change
    add_column :class_rooms, :author_id, :integer, index: true
  end
end
