
class AddcolumnsToTruckData < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string   :name
      t.float    :longitude  
      t.float    :latitude  
      t.string  :str_address
      t.string  :location_description
      t.timestamps null: false
    end
  end
end

