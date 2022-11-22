class CreateGameRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :game_ratings do |t|
      t.string :comment
      t.float :rating
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
