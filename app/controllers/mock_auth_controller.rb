class MockAuthController < ApplicationController
  # Mock authentication endpoint to be used as the backend for the Ember app.
  def token
    if params['username'] == 'lewis' and params['password'] == 'secret'
      render json: { "access_token": "fake token!" }
    else
      render json: { "error": "invalid credentials" }, status: :bad_request
    end
  end
end
