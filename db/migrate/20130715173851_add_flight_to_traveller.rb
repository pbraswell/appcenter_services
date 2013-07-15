class AddFlightToTraveller < ActiveRecord::Migration
  def change
    add_column :travellers, :flight_id, :integer
  end
end
