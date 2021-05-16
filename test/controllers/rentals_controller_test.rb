require 'test_helper'

class RentalsControllerTest < ActionDispatch::IntegrationTest
  test 'get rentals' do
    get rentals_url
    assert_response :success
    data = JSON.parse(@response.body)['data']

    # Check the response is structured as expected.
    assert data.length == 2  # 2 fixtures
    assert data[0]['attributes'].keys == ['title', 'owner', 'city', 'category', 'bedrooms', 'image', 'description', 'location']
    assert data[0]['attributes']['location'].keys == ['lat', 'lng']
  end

  test 'get single rental' do
    get '/rentals/my-slug-1'
    assert_response :success
    data = JSON.parse(@response.body)['data']

    # Check the response is structured as expected.
    assert data['attributes'].keys == ['title', 'owner', 'city', 'category', 'bedrooms', 'image', 'description', 'location']
    assert data['attributes']['location'].keys == ['lat', 'lng']
    
    # Check that non-existent slugs 404.
    get '/rentals/non-existent'
    assert_response :not_found
  end
end
