class AddKeyForMarkAndTask < ActiveRecord::Migration[6.1]
  def change
    rename_column :marks, :subject_id, :task_id
  end
end
