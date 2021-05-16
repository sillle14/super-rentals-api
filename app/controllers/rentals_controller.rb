class RentalsController < ApplicationController
  # Enable PUT/POST from other origins.
  skip_before_action :verify_authenticity_token
end
