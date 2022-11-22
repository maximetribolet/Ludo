class AddTitleToUserGame < ActiveRecord::Migration[7.0]
  def change
    add_column :user_games, :title, :string
  end
end
