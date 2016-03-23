class AddcolumnToTrucks < ActiveRecord::Migration
  def change
    add_column :trucks, :dayshours, :string
  end
end
