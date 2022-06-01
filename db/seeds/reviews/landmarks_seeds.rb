### Landmarks

# NEZU
puts "..."
file = File.open("app/assets/images/reviews/landmarks/nezu-cafe.webp")
review = Review.create!(
  rating: 5,
  content: "There was a nice cafe called Nezu Cafe.  The views are great, and tables are tall enough for foreign wheelchairs.  The staff are also very thoughtful about providing drinking straws and pre-cut food if needed.",
  user: User.where.not(email: '1@e.com').sample,
  place: Place.find_by(name: 'Nezu Museum')
)
review.photos.attach(io: file, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
file = File.open("app/assets/images/reviews/landmarks/nezu.jpeg")
file1 = File.open("app/assets/images/reviews/landmarks/nezu1.webp")
file2 = File.open("app/assets/images/reviews/landmarks/nezu2.webp")
review = Review.create!(
  rating: 4,
  content: "The museum itself is quite open and is easy to maneuver in a wheelchair. While there are steps in the garden, the museum offers a map highlighting an accessible route. The route takes visitors by the majority of the statues on display. Unfortunately, the path is a bit uneven and narrow, and since the garden is on an incline it would be nice if there were a few guard rails at steeper parts.",
  user: User.where.not(email: '2@e.com').sample,
  place: Place.find_by(name: 'Nezu Museum')
)
review.photos.attach(io: file, filename: 'review.jpeg')
review.photos.attach(io: file1, filename: 'review.jpeg')
review.photos.attach(io: file2, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
file = File.open("app/assets/images/reviews/landmarks/nezu-toilet.webp")
review = Review.create!(
  rating: 5,
  content: "Large accessible toilets are available on the first floor and in the basement.",
  user: User.where.not(email: '3@e.com').sample,
  place: Place.find_by(name: 'Nezu Museum')
)
review.photos.attach(io: file, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

# DAIKANYAMA

puts "..."
file = File.open("app/assets/images/reviews/daikanyama1.webp")
file2 = File.open("app/assets/images/reviews/daikanyama2.webp")
review = Review.create!(
  rating: 2,
  content: "The Daikanyama neighborhood is made up of a number of small shops and slightly bigger buildings holding multiple stores which are not quite shopping mall size. While some stores are accessible, it seems that Daikanyama has a disproportionate number of stores that are inaccessible to those with physical disabilities.",
  user: User.where.not(email: '4@e.com').sample,
  place: Place.find_by(name: 'Daikanyama')
)
review.photos.attach(io: file, filename: 'review.jpeg')
review.photos.attach(io: file2, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

# SWORD
puts "..."
file = File.open("app/assets/images/reviews/sword1.webp")
review = Review.create!(
  rating: 4,
  content: "The museum building is new and very flat. Wheelchair parking is available at the front of the museum.  Tactile paving leads from the entrance to the ticket gate, but after that there are only tactile blocks indicating stairs.",
  user: User.where.not(email: 'yuki@e.com').sample,
  place: Place.find_by(name: 'Japanese Sword Museum')
)
review.photos.attach(io: file, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
file = File.open("app/assets/images/reviews/sword2.webp")
review = Review.create!(
  rating: 5,
  content: "For those with difficulty walking, there are many places to rest and wheelchairs available to borrow if needed.",
  user: User.where.not(email: 'tirso@e.com').sample,
  place: Place.find_by(name: 'Japanese Sword Museum')
)
review.photos.attach(io: file, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
file = File.open("app/assets/images/reviews/sword3.webp")
review = Review.create!(
  rating: 5,
  content: "Accessible toilets are available on the 1st and 3rd floors.",
  user: User.where.not(email: 'luis@e.com').sample,
  place: Place.find_by(name: 'Japanese Sword Museum')
)
review.photos.attach(io: file, filename: 'review.jpeg')
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

# SKYTREE
puts "..."
review = Review.create!(
  rating: 4,
  content: "Tokyo Skytree and the accompanying Sola Machi shopping mall have excellent accessibility.",
  user: User.where.not(email: '1@e.com').sample,
  place: Place.find_by(name: 'Tokyo Skytree')
)
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
review = Review.create!(
  rating: 5,
  content: "The entrance to Tokyo Skytree is accessible from the 4th floor of Sola Machi. ",
  user: User.where.not(email: '2@e.com').sample,
  place: Place.find_by(name: 'Tokyo Skytree')
)
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
review = Review.create!(
  rating: 5,
  content: "There is a discount available to disabled guests and foreign disability ID cards are accepted as proof of disability.",
  user: User.where.not(email: '3@e.com').sample,
  place: Place.find_by(name: 'Tokyo Skytree')
)
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"

puts "..."
review = Review.create!(
  rating: 5,
  content: "When returning to the ground floor, once again those with disabilities are allowed to skip the line and take the first available elevator.

  ",
  user: User.where.not(email: '4@e.com').sample,
  place: Place.find_by(name: 'Tokyo Skytree')
)
puts "Review of #{review.place.name} by #{review.user.username} ( #{review.user.email} ) created"
