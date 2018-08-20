class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :max_mark
      t.references :teaching_set, foreign_key: true

      t.timestamps
    end
  end
end
