class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.integer :raw_mark
      t.text :comment
      t.references :task, foreign_key: true
      t.references :set_pupil, foreign_key: true

      t.timestamps
    end
  end
end
