puts "..."
Itinerary.create!(
  name: "Trip to Kansai",
  user: User.find_by(email: '1@e.com')
)
