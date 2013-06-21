Flight.create :departs_at => Time.now, :origin => "SFO", :destination => "DFW", :flight_time => 1.0
Flight.create :departs_at => Time.now, :origin => "DFW", :destination => "SFO", :flight_time => 1.0
Flight.create :departs_at => Time.now, :origin => "ORD", :destination => "SFO", :flight_time => 2.0
Flight.create :departs_at => Time.now, :origin => "SFO", :destination => "ORD", :flight_time => 1.0

