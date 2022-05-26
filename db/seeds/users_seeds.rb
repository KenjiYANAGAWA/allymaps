4.times do |index|
  puts "..."
  file = File.open("app/assets/images/places/users/#{index}.jpg")
  user = User.create!(
    email: "#{index}@e.com",
    password: 123_123
  )
  user.photo.attach(io: file, filename: 'place.jpeg')
end
