10.times do
  file = File.open("app/assets/images/reviews/fushimiinari.jpeg")
  puts "..."
  review = Review.create!(
    rating: rand(1..5),
    content: Faker::Quote.matz,
    user: User.all.sample,
    place: Place.all.sample
  )
  review.photos.attach(io: file, filename: 'review.jpeg')
end
