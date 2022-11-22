class AddDescriptionToGame < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :description, :string
  end
end
