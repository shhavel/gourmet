# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Atmosfere.create(name: 'Atmosfere 1')
Atmosfere.create(name: 'Atmosfere 2')
Atmosfere.create(name: 'Atmosfere 3')
Atmosfere.create(name: 'Atmosfere 4')
Atmosfere.create(name: 'Atmosfere 5')

ActiveRecord::Base.connection.execute(<<-SQL
  INSERT INTO RESTAURANTS (name, address, latitude, longitude, phone) (
  SELECT 'Cafe ' || i AS name, '' AS address, 39 + x.lat AS latitude, -76 - x.lon AS longitude, '' AS phone
  FROM (
    SELECT i, random() * 10 AS lat, random() * 10 AS lon
    FROM generate_series(1,1000000) AS i
  )
  AS x );
  SQL
)
