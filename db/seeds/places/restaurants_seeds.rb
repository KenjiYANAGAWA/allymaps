### Restaurants

puts "..."
file = File.open("app/assets/images/places/restaurants/meiji_kinenn_kan.jpeg")
place = Place.create!(
  name: 'Meiji Kinenkan',
  description: "Rebuilt, late-1800s reception hall popular for weddings, with green grounds & a summer beer garden. Meiji Kinenkan features five restaurants that stimulate all of your senses, serving expertly prepared dishes using the finest seasonal ingredients Japan has to offer.",
  toilet: 'has_one',
  elevator: 'no_data',
  parking: 'has',
  charging: 'no_data',
  area: 'mostly',
  # address: '2 Chome-2-23 Motoakasaka, Minato City, Tokyo, 107-8507, Japan',
  address: 'Meiji Kinenkan',
  city: 'Minato',
  category: 'restaurant'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"
