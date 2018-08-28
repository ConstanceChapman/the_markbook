class RemoveCommentFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :comment, :string
  end
end
