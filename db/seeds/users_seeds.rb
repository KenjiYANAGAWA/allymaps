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

user = User.create!(
  username: 'Kenji',
  email: "kenji@e.com",
  password: 123_123
)
file = File.open("app/assets/images/users/kenji.jpeg")
user.photo.attach(io: file, filename: 'user.jpg')

user = User.create!(
  username: 'Kenji',
  email: "kenji@e.com",
  password: 123_123
)
file = File.open("app/assets/images/users/kenji.jpeg")
user.photo.attach(io: file, filename: 'user.jpg')


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
