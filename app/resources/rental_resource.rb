class RentalResource < JSONAPI::Resource
  attributes :title, :owner, :city, :category, :bedrooms, :image, :description
  attribute :location
  key_type :string
  primary_key :slug

  # Nest the location as expected by the Ember app.
  def location
    return {lat: @model.lat, lng: @model.lng}
  end
end