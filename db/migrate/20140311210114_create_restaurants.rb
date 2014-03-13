class CreateRestaurants < ActiveRecord::Migration
  def up
    enable_extension :postgis

    create_table :restaurants, id: false do |t|
      t.primary_key :restaurant_id
      t.string :name, null: false
      t.string :address, null: false
      t.decimal :longitude, precision: 10, scale: 6, null: false
      t.decimal :latitude, precision: 10, scale: 6, null: false
      t.float :averagesum
      t.string :worktime
      t.string :phone, null: false
      t.string :imageurls, array: true, default: [], null: false
      t.text :description
      t.float :rating
      t.integer :atmosfere_ids, array: true, default: [], null: false
    end

    execute <<-SQL
      CREATE INDEX index_restaurants_on_location ON restaurants using gist (
        ST_GeographyFromText(
          'SRID=4326;POINT(' || restaurants.longitude || ' ' || restaurants.latitude || ')'
        )
      );
    SQL
  end

  def down
    execute 'DROP INDEX index_restaurants_on_location;'
    drop_table :restaurants
  end
end
