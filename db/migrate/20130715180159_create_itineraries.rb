class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.belongs_to :traveller
      t.belongs_to :flight

      t.timestamps
    end
    add_index :itineraries, :traveller_id
    add_index :itineraries, :flight_id
  end
end
