class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :restaurant_id, null: false
      t.datetime :datetime, null: false
      t.integer :quantity, null: false
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end

    add_index :orders, :restaurant_id
  end
end
