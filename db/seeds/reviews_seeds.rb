# Daikanyama, Sensoji, Sword, skytree

# 10.times do
#   file = File.open("app/assets/images/reviews/fushimiinari.jpeg")
#   puts "..."
#   review = Review.create!(
#     rating: rand(1..5),
#     content: Faker::Quote.matz,
#     user: User.all.sample,
#     place: Place.all.sample
#   )
#   review.photos.attach(io: file, filename: 'review.jpeg')
# end

puts "..."
file = File.open("app/assets/images/reviews/daikanyama1.webp")
file2 = File.open("app/assets/images/reviews/daikanyama2.webp")
review = Review.create!(
  rating: 2,
  content: "The Daikanyama neighborhood is made up of a number of small shops and slightly bigger buildings holding multiple stores which are not quite shopping mall size. While some stores are accessible, it seems that Daikanyama has a disproportionate number of stores that are inaccessible to those with physical disabilities.",
  user: User.where.not(email: '1@e.com').sample,
  place: Place.find_by(name: 'Daikanyama')
)
review.photos.attach(io: file, filename: 'review.jpeg')
review.photos.attach(io: file2, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
file = File.open("app/assets/images/reviews/sensoji.jpeg")
review = Review.create!(
  rating: 5,
  content: "Visiting Sensoji is a must.  The crowds can vary by day-of-the week (weekends are more crowded as Japanese tourists have a day off) and time of the year. The main temple is accessible, there are toilets available and most restaurants in the surrounding area are more accessible than other areas in Japan.  Check it out!",
  user: User.where.not(email: '1@e.com').sample,
  place: Place.find_by(name: 'Sensoji')
)
review.photos.attach(io: file, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
file = File.open("app/assets/images/reviews/sword1.webp")
review = Review.create!(
  rating: 4,
  content: "The museum building is new and very flat. Wheelchair parking is available at the front of the museum.  Tactile paving leads from the entrance to the ticket gate, but after that there are only tactile blocks indicating stairs.",
  user: User.where.not(email: '1@e.com').sample,
  place: Place.find_by(name: 'Japanese Sword Museum')
)
review.photos.attach(io: file, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
file = File.open("app/assets/images/reviews/sword2.webp")
review = Review.create!(
  rating: 5,
  content: "For those with difficulty walking, there are many places to rest and wheelchairs available to borrow if needed.",
  user: User.where.not(email: '1@e.com').sample,
  place: Place.find_by(name: 'Japanese Sword Museum')
)
review.photos.attach(io: file, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
file = File.open("app/assets/images/reviews/sword3.webp")
review = Review.create!(
  rating: 5,
  content: "Accessible toilets are available on the 1st and 3rd floors.",
  user: User.where.not(email: '1@e.com').sample,
  place: Place.find_by(name: 'Japanese Sword Museum')
)
review.photos.attach(io: file, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"


puts "..."
review = Review.create!(
  rating: 4,
  content: "Built in 2012, Tokyo Skytree and the accompanying Sola Machi shopping mall have excellent accessibility.",
  user: User.where.not(email: '1@e.com').sample,
  place: Place.find_by(name: 'Tokyo Skytree')
)
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
review = Review.create!(
  rating: 5,
  content: "The entrance to Tokyo Skytree is accessible from the 4th floor of Sola Machi. ",
  user: User.where.not(email: '1@e.com').sample,
  place: Place.find_by(name: 'Tokyo Skytree')
)
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
review = Review.create!(
  rating: 5,
  content: "There is a discount available to disabled guests and foreign disability ID cards are accepted as proof of disability.",
  user: User.where.not(email: '1@e.com').sample,
  place: Place.find_by(name: 'Tokyo Skytree')
)
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
review = Review.create!(
  rating: 5,
  content: "When returning to the ground floor, once again those with disabilities are allowed to skip the line and take the first available elevator.

  ",
  user: User.where.not(email: '1@e.com').sample,
  place: Place.find_by(name: 'Tokyo Skytree')
)
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"


# Template
puts "..."
# file = File.open("app/assets/images/reviews/.webp")
# file2 = File.open("app/assets/images/reviews/.webp")
# review = Review.create!(
#   rating: ,
#   content: "",
#   user: User.where.not(email: '1@e.com').sample,
#   place: Place.find_by(name: '')
# )
# review.photos.attach(io: file, filename: 'review.jpeg')
# review.photos.attach(io: file2, filename: 'review.jpeg')
# puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"
