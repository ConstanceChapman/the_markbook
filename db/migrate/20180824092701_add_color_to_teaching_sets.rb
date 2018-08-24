class AddColorToTeachingSets < ActiveRecord::Migration[5.2]
  def change
    add_column :teaching_sets, :color, :string
  end
end
