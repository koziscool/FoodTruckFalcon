

class Geocoder < ActiveRecord::Base
  acts_as_mappable
  attr_accessor :city_string

  @city_string = ", San Francisco, CA"

end