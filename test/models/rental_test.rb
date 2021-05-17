require 'test_helper'

class RentalTest < ActiveSupport::TestCase

  test 'slug is created' do
    rental = Rental.new(title: 'My Rental')
    assert rental.slugify == 'my-rental'
  end

end
