class AddColorToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :color, :string
  end
end
