class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :payment_method, :string
    add_column :users, :phone_number, :string
    add_column :users, :rating, :float
    add_column :users, :plz, :string
  end
end
