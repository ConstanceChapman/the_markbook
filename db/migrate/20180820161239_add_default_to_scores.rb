class AddDefaultToScores < ActiveRecord::Migration[5.2]
  def change
    remove_column :scores, :value
    add_column :scores, :value, :integer, default: 0, null: false
  end
end
