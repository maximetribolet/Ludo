class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email
      t.string :payment_method
      t.string :phone_number
      t.string :language
      t.float :rating
      t.string :plz

      t.timestamps
    end
  end
end
