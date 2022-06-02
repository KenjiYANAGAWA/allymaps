require "open-uri"

puts "Cleaning the DB..."
User.destroy_all
Place.destroy_all
puts

puts "Creating places..."
Dir[File.join(Rails.root, 'db', 'seeds', 'places_seeds.rb')].each { |seed| load seed }
puts "...created #{Place.count} places."
puts

puts "Creating users..."
Dir[File.join(Rails.root, 'db', 'seeds', 'users_seeds.rb')].each { |seed| load seed }
puts "...created #{User.count} users."
puts

puts "Creating reviews..."
Dir[File.join(Rails.root, 'db', 'seeds', 'reviews_seeds.rb')].each { |seed| load seed }
puts "...created #{Review.count} reviews."
puts

puts "Creating itineraries..."
Dir[File.join(Rails.root, 'db', 'seeds', 'itineraries_seeds.rb')].each { |seed| load seed }
puts "...created #{Itinerary.count} itineraries."
puts

puts "Creating destinations..."
Dir[File.join(Rails.root, 'db', 'seeds', 'destinations_seeds.rb')].each { |seed| load seed }
puts "...created #{Destination.count} destinations."
puts
puts "#{Place.count} Places."
puts "#{User.count} Users."
puts "#{Review.count} Reviews."
puts "#{Itinerary.count} Itineraries."
puts "#{Destination.count} Destinations."
