
class Truck < ActiveRecord::Base

  attr_accessor :distance
  attr_reader :begin_latitude, :begin_longitude

  @distance = 999999
  @begin_latitude = 37.774929
  @begin_longitude = -122.419416

  BASE_STRING = "https://data.sfgov.org/resource/6a9r-agq8.json"
  # OPTIONS = "$limit=8"
  OPTIONS = ""
 
  def make_request
    request_string = BASE_STRING + "?" + OPTIONS
    @truck_data_response = HTTParty.get( request_string )
  end

  def self.distance loc1, loc2
    rad_per_deg = Math::PI/180  # PI / 180
    rkm = 6371                  # Earth radius in kilometers
    rm = rkm * 1000             # Radius in meters

    dlat_rad = (loc2[0]-loc1[0]) * rad_per_deg  # Delta, converted to rad
    dlon_rad = (loc2[1]-loc1[1]) * rad_per_deg

    lat1_rad, lon1_rad = loc1.map {|i| i * rad_per_deg }
    lat2_rad, lon2_rad = loc2.map {|i| i * rad_per_deg }

    a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
    c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))

    rm * c # Delta in meters
  end



end