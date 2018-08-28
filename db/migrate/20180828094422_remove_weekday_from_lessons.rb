class RemoveWeekdayFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :weekday, :integer
  end
end
