class AddIndexForClassRoom < ActiveRecord::Migration[6.1]
  def change
    add_index :class_rooms, :author_id
  end
end
