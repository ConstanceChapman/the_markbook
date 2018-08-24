class RemoveColorFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :color
  end
end
