# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@truck_class = Truck.new
@truck_data = @truck_class.make_request
@truck_data.each do | truck_json |

  Truck.create( 
      name: truck_json['applicant'],
      str_address: truck_json['address'],
      dayshours: truck_json['dayshours'],
      latitude: truck_json['latitude'],
      longitude: truck_json['longitude'],
      location_description: truck_json['locationdescription']
    )
end

