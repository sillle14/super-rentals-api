class Rental < ApplicationRecord
  # For simplicity of the Ember App, require everything.
  [:title, :owner, :city, :category, :bedrooms, :image, :description, :lat, :lng].each do |field|
    validates field, presence: true
  end
end
