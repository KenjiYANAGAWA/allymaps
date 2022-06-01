### Temples and Shrines
puts "..."
file = File.open("app/assets/images/reviews/temples/sensoji.jpeg")
review = Review.create!(
  rating: 5,
  content: "Visiting Sensoji is a must. The main temple is accessible, there are toilets available and most restaurants in the surrounding area are more accessible than other areas in Japan.",
  user: User.where.not(email: '1@e.com').sample,
  place: Place.find_by(name: 'Sensoji')
)
review.photos.attach(io: file, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
file = File.open("app/assets/images/reviews/temples/meijijingu2.jpeg")
review = Review.create!(
  rating: 5,
  content: "In most traditional shrines, the area where prayers are offered are at the top of a flight of steps.  While this is the case at Meiji Shrine as well, there is a ramp that lets anyone get up front and see inside.",
  user: User.where.not(email: '2@e.com').sample,
  place: Place.find_by(name: 'Sensoji')
)
review.photos.attach(io: file, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
file = File.open("app/assets/images/reviews/temples/meijijingu3.jpeg")
file1 = File.open("app/assets/images/reviews/temples/meijijingu4.jpeg")
review = Review.create!(
  rating: 4,
  content: "There is also a nice accessible toilet available.  However, it should be noted that for an area this size, you would expect there to be more.",
  user: User.where.not(email: '3@e.com').sample,
  place: Place.find_by(name: 'Sensoji')
)
review.photos.attach(io: file, filename: 'review.jpeg')
review.photos.attach(io: file1, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"
