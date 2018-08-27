class AddReportCycleRefToLessons < ActiveRecord::Migration[5.2]
  def change
    add_reference :lessons, :report_cycle, foreign_key: true
  end
end
