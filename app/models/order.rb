class Order < ActiveRecord::Base
  validates :restaurant_id, :datetime, :quantity, presence: true
  validates :phone, presence: true, unless: :email?
end
