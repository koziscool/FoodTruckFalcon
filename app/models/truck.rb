
class Truck < ActiveRecord::Base
  BASE_STRING = "https://data.sfgov.org/resource/6a9r-agq8.json"
  OPTIONS = "$limit=1"
 
  def initialize

  end

  def make_request
    request_string = BASE_STRING + "?" + OPTIONS
    @truck_data_response = HTTParty.get( request_string )
  end

end