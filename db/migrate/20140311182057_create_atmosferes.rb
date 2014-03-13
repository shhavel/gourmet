class CreateAtmosferes < ActiveRecord::Migration
  def change
    create_table :atmosferes, id: false do |t|
      t.primary_key :atmosfere_id
      t.string :name, null: false
    end

    add_index :atmosferes, :name, unique: true
  end
end
