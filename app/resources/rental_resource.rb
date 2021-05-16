class RentalResource < JSONAPI::Resource
  attributes :title, :owner, :city, :category, :bedrooms, :image, :description, :lat, :lng
  attribute :location
  key_type :string
  primary_key :slug

  # Nest the location as expected by the Ember app.
  def location
    return {lat: @model.lat, lng: @model.lng}
  end

  # Lat and lng are only fetchable view location.
  def fetchable_fields
    super - [:lat, :lng]
  end

  # Location can not be set directly.
  def self.updatable_fields(context)
    super - [:location]
  end

  def self.creatable_fields(context)
    super - [:location]
  end
end