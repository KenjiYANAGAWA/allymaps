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

#### OLD WAY ###

# japan_places = %w[meguro shibuya shinjuku Ginza Ueno Nippori Ikebukuro Mizonokuchi Kawasaki yokohama Kamakura Enoshima Ebisu Shinagawa Tabata Sugamo komagome mejiro takadanobaba hajajuku yoyogi asakusa odaiba shinbashi noborito tachikawa yamato akihabara]

# 10.times do
#   puts "..."
#   file = File.open("app/assets/images/places/fushimiinari.jpeg")
#   place = Place.create!(
#     name: Faker::JapaneseMedia::OnePiece.location,
#     description: Faker::ChuckNorris.fact,
#     address: japan_places.sample,
#     toilet: Place.toilets.keys.sample,
#     # entrance: Place.entrances.keys.sample,
#     elevator: Place.elevators.keys.sample,
#     parking: Place.parkings.keys.sample,
#     charging: Place.chargings.keys.sample,
#     area: Place.areas.keys.sample
#   )
#   place.photos.attach(io: file, filename: 'place.jpeg')
#   # end
#   puts "...created #{Place.count} places."

#   puts "Creating users..."
#   random = (1..4).to_a
#   4.times do
#     file = URI.open("https://kitt.lewagon.com/placeholder/users/krokrob")
#   puts "..."
#   user = User.create!(
#     email: "#{random.pop}@e.com",
#     password: 123_123
#   )
#   user.photo.attach(io: file, filename: 'place.jpeg')
# end
# puts "...created #{User.count} users."

# puts "Creating itineraries..."
# 10.times do
#   puts "..."
#   Itinerary.create!(
#     name: "Trip to #{Faker::Nation.capital_city}",
#     user: User.all.sample
#   )
# end
# puts "...created #{Itinerary.count} itineraries."

# puts "Creating destinations..."
# 20.times do
#   puts "..."
#   Destination.create!(
#     itinerary: Itinerary.all.sample,
#     place: Place.all.sample
#   )
# end
# puts "...created #{Destination.count} destinations."

# puts "Creating reviews..."
# 10.times do
#   file = File.open("app/assets/images/reviews/fushimiinari.jpeg")
#   puts "..."
#   review = Review.create!(
#     content: Faker::Quote.matz,
#     user: User.all.sample,
#     place: Place.all.sample
#   )
#   review.photos.attach(io: file, filename: 'review.jpeg')
# end
# puts "...created #{Review.count} reviews."
