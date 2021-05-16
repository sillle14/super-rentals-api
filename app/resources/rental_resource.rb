class RentalResource < JSONAPI::Resource
  attributes :title, :owner, :city, :category, :bedrooms, :image, :description, :lat, :lng
  key_type :string
  primary_key :slug
end