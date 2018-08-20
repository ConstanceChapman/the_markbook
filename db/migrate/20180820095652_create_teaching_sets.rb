class CreateTeachingSets < ActiveRecord::Migration[5.2]
  def change
    create_table :teaching_sets do |t|
      t.string :subject
      t.string :year_group
      t.date :end_date
      t.date :start_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
