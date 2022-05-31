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
  place: Place.where(name: 'Daikanyama')
)
review.photos.attach(io: file, filename: 'review.jpeg')
review.photos.attach(io: file2, filename: 'review.jpeg')
puts "Review of #{review.place} by #{review.user.name} ( #{review.user.email} ) created"
