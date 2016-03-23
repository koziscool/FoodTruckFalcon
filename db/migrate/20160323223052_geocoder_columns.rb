class GeocoderColumns < ActiveRecord::Migration
  def change
    create_table :geocoders do |t|
      t.float    :longitude  
      t.float    :latitude  
    end
  end
end
