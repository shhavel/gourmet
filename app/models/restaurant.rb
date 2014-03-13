class Restaurant < ActiveRecord::Base
  self.primary_key = 'restaurant_id'

  scope :nearby, -> (longitude, latitude, distance_in_meters = 2000) do
    where(%{
      ST_DWithin(
        ST_GeographyFromText('SRID=4326;POINT(' || restaurants.longitude || ' ' || restaurants.latitude || ')'),
        ST_GeographyFromText('SRID=4326;POINT(%f %f)'),
        %d
      )
    } % [longitude, latitude, distance_in_meters]).order(%{
      ST_Distance(
        ST_GeographyFromText('SRID=4326;POINT(' || restaurants.longitude || ' ' || restaurants.latitude || ')'),
        ST_GeographyFromText('SRID=4326;POINT(%f %f)')
      )
    } % [longitude, latitude])
  end

  scope :with_some_of_atmosferes, -> (atmosfere_ids) do
    if atmosfere_ids && atmosfere_ids.is_a?(Array) && atmosfere_ids.any?
      where("restaurants.atmosfere_ids && '{%s}'" % atmosfere_ids.map(&:to_i).join(','))
    else
      self
    end
  end
end
