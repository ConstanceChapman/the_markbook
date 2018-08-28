class AddReportCycleToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :report_cycle, foreign_key: true
  end
end
