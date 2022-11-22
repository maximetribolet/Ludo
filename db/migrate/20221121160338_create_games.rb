class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :editor
      t.string :category
      t.integer :year
      t.integer :min_players
      t.integer :max_players
      t.integer :playtime
      t.string :image_url
      t.float :average_rating

      t.timestamps
    end
  end
end
