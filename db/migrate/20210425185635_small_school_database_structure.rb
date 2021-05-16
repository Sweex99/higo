class SmallSchoolDatabaseStructure < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.string :title
      t.string :description

      t.timestamps
    end

    create_table :class_rooms do |t|
      t.string :title
      t.string :description
      t.integer :organization_id

      t.timestamps
    end

    create_table :marks do |t|
      t.integer :subject_id
      t.integer :number
      t.integer :user_id

      t.timestamps
    end

    create_table :subjects do |t|
      t.string :title

      t.timestamps
    end

    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.belongs_to :user

      t.timestamps
    end

    add_column :users, :type, :string
  end
end
