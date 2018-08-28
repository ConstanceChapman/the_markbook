class AddColumnsToReports < ActiveRecord::Migration[5.2]
  def change
    add_reference(:reports, :top_mark, foreign_key: {to_table: :marks})
    add_reference(:reports, :bottom_mark, foreign_key: {to_table: :marks})
    add_column :reports, :average_mark, :float
  end
end
