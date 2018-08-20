class CreateSetPupils < ActiveRecord::Migration[5.2]
  def change
    create_table :set_pupils do |t|
      t.references :teaching_set, foreign_key: true
      t.references :pupil, foreign_key: true

      t.timestamps
    end
  end
end
