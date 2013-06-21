class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.time :departs_at
      t.float :flight_time
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
