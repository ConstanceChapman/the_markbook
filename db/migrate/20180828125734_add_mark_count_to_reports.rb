class AddMarkCountToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :mark_count, :integer, default: 0
  end
end
