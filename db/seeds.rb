puts "Cleaning the DB..."
User.destroy_all
Place.destroy_all

japan_places =  %w(meguro, shibuya, shinjuku, Ginza, Ueno, Nippori, Ikebukuro, Mizonokuchi, Kawasaki, yokohama, Kamakura, Enoshima, Ebisu, Shinagawa, Tabata, Sugamo, komagome, mejiro, takadanobaba, hajajuku, yoyogi, asakusa, odaiba, shinbashi, noborito, tachikawa, yamato, akihabara)


puts "Creating places..."
20.times do
  puts "..."
  Place.create!(
    name: Faker::JapaneseMedia::OnePiece.location,
    description: Faker::ChuckNorris.fact,
    address: japan_places.sample,
    wheelchair_accessibility: rand(1..3)
  )
end
puts "...created #{Place.count} places."


puts "Creating users..."
random = (1..4).to_a
4.times do
  puts "..."
  User.create!(
    email: "#{random.pop}@e.com",
    password: 123_123,
  )
end
puts "...created #{User.count} users."


puts "Creating itineraries..."
10.times do
  puts "..."
  Itinerary.create!(
    user: User.all.sample
  )
end
puts "...created #{Itinerary.count} itineraries."


puts "Creating destinations..."
30.times do
  puts "..."
  Destination.create!(
    itinerary: Itinerary.all.sample,
    place: Place.all.sample
  )
end
puts "...created #{Destination.count} destinations."



puts "Creating reviews..."
60.times do
  puts "..."
  Review.create!(
    content: Faker::Quote.matz,
    wheelchair_accessibility: rand(1..3),
    user: User.all.sample,
    place: Place.all.sample
  )
end
puts "...created #{Review.count} reviews."