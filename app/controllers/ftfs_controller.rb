class FtfsController < ApplicationController

  def new
    @truck = Truck.new
    @truck_data = @truck.make_request

    pp @truck_data


    render :truck_show
  end 

  def use_address
    render :truck_show
  end 

  def use_coordinates
    render :truck_show
  end

end
