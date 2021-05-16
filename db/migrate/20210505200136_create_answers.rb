class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :body
      t.string :url_file
      t.belongs_to :user
      t.belongs_to :mark
      t.belongs_to :task

      t.timestamps
    end
  end
end
