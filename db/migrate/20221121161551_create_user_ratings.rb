class CreateUserRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :user_ratings do |t|
      t.string :comment
      t.float :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
