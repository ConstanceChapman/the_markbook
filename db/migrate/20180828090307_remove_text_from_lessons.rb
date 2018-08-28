class RemoveTextFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :comment, :text
  end
end
