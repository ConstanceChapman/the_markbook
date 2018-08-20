class CreateReportCycles < ActiveRecord::Migration[5.2]
  def change
    create_table :report_cycles do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.references :teaching_set, foreign_key: true

      t.timestamps
    end
  end
end
