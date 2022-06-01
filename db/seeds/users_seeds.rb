images = (1..4).to_a

images.each do |image|
  puts "..."
  user = User.create!(
    username: Faker::Internet.username,
    email: "#{image}@e.com",
    password: 123_123
  )
  file = File.open("app/assets/images/users/#{image}.jpg")
  user.photo.attach(io: file, filename: 'user.jpg')
end

puts "..."
user = User.create!(
  username: 'Kenji',
  email: "kenji@e.com",
  password: 123_123
)
file = File.open("app/assets/images/users/kenji.jpeg")
user.photo.attach(io: file, filename: 'user.jpg')
puts user.email

puts "..."
user = User.create!(
  username: 'Yuki',
  email: "Yuki@e.com",
  password: 123_123
)
file = File.open("app/assets/images/users/yuki.jpeg")
user.photo.attach(io: file, filename: 'user.jpg')
puts user.email

puts "..."
user = User.create!(
  username: 'Luis',
  email: "Luis@e.com",
  password: 123_123
)
file = File.open("app/assets/images/users/luis.jpeg")
user.photo.attach(io: file, filename: 'user.jpg')
puts user.email

puts "..."
user = User.create!(
  username: 'Tirso',
  email: "Tirso@e.com",
  password: 123_123
)
file = File.open("app/assets/images/users/tirso.png")
user.photo.attach(io: file, filename: 'user.jpg')
puts user.email


# 4.times do |index|
#   puts "..."
#   file = File.open("app/assets/images/users/#{index}.jpg")
#   user = User.create!(
#     username: Faker::Internet.username,
#     email: "#{index}@e.com",
#     password: 123_123
#   )
#   user.photo.attach(io: file, filename: 'place.jpeg')
# end
