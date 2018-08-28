class ChangeDatetimesToDateInReportCycles < ActiveRecord::Migration[5.2]
  def change
    change_column :report_cycles, :start_date, :date
    change_column :report_cycles, :end_date, :date
  end
end
