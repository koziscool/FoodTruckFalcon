class FtfsController < ApplicationController

  def index

    @trucks = Truck.all
    # @truck_data = @truck_class.make_request
    @close_trucks = []
    me = [37.774929, -122.419416]
    
    @trucks.each do | truck |
      if truck.latitude && truck.longitude
        t_dist = [truck.latitude, truck.longitude]
        distance = Truck.distance( me, t_dist)
        if distance < 1500
          truck.distance = distance.floor
          @close_trucks << truck
        end
      end
    end

    @close_trucks.sort! do | truck1, truck2 |
      truck1.distance <=> truck2.distance
    end

    @closer_trucks = @close_trucks[0..10]

    render :truck_show
  end 

  def use_address
    render :truck_show
  end 

  def use_coordinates
    render :truck_show
  end


  private
  def remove_dupes

  end


end
