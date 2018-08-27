class AddWeekdayToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :weekday, :integer, array: true, default: []
  end
end
