class RemoveColumnDescriptionGame < ActiveRecord::Migration[7.0]
  def change
    remove_column :games, :category
    remove_column :games, :editor
  end
end
