class FtfsController < ApplicationController

  def new
    @truck_class = Truck.new
    @truck_data = @truck_class.make_request

    @truck_data.each do | truck_json |
      pp truck_json['applicant']
      pp truck_json['address']
      pp truck_json['dayshours']

      latitude = truck_json['location']['coordinates'][0]
      longitude = truck_json['location']['coordinates'][1]

      pp latitude
      pp longitude
    end


    # pp @truck_data
    render :truck_show
  end 

  def use_address
    render :truck_show
  end 

  def use_coordinates
    render :truck_show
  end

end
