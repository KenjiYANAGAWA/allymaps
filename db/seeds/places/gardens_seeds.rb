puts "..."
file = File.open("app/assets/images/places/gardens/shinjukugyoen.webp")
place = Place.create!(
  name: 'Imperial Palace',
  description: "After the end of the shogunate and the Meiji Restoration, the shogun and inhabitants of Edo castle were required to leave. The emperor arrived from Kyoto at the Edo Castle to make it to his new residence and renamed it to Tokei Castle (at this time Tokyo had also been called Tokei). He went back to Kyoto, and after coming back on 9 May 1869 the castle was renamed as the Imperial Castle. On the night of 25 May 1945, most of the structures in the Imperial Palace were destroyed in the Allied firebombing raid on Tokyo. Due to the near-total destruction of the palace, a new main palace hall and residences were constructed on the western portion of the site in the 1960s. The area was renamed as the Imperial Residence (Kokyo) in 1948 while the eastern part was renamed East Garden and became a public park in 1968.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Imperial Palace',
  city: 'Chiyoda',
  toilet: 'has_many',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/gardens/shinjukugyoen.webp")
place = Place.create!(
  name: 'Shinjuku Gyoen',
  description: "Shinjuku Gyoen is one of Tokyo’s biggest parks and a great place to enjoy the yearly cherry blossoms. Though there are some accessibility issues to be aware of, the park has created some excellent resources for people with disabilities.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Shinjuku Gyoen',
  city: 'Shinjuku',
  toilet: 'has_many',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/gardens/kyu.webp")
place = Place.create!(
  name: 'Kyu-Yasuda Teien',
  description: "Located a stone’s throw from both the Sumo Museum and the Edo-Tokyo Musum, the Kyu-Yasuda Teien Gardens can help you continue your history kick in Tokyo. Unfortunately, if you are in a wheelchair, you can only enjoy half of it. But, that is enough likely.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: '旧安田庭園',
  city: 'Sumida',
  toilet: 'has_one',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'partly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/gardens/rikugien.webp")
place = Place.create!(
  name: 'Rikugien',
  description: "Rikugien Garden is ranked as one of the most beautiful traditional gardens in Tokyo. It represents the best of Edo Period gardens with a large pond, man-made hills, and tea houses for contemplation. Unfortunately, much of it is inaccessible to wheelchair users – including the most scenic spots.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Rikugien',
  city: 'Koto',
  toilet: 'has_one',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'partly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/gardens/kiyosumi.webp")
place = Place.create!(
  name: 'Kiyosumi Garden',
  description: "Kiyosumi Garden (or Kiyosumi Teien) is a traditional Japanese garden located in Tokyo. While beautiful, less than half of the garden is wheelchair accessible.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Kiyosumi Garden',
  city: 'Koto',
  toilet: 'has_many',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'partly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/gardens/hamarikyu.webp")
place = Place.create!(
  name: 'Hama Rikyu',
  description: "The Hama Rikyu Gardens is a public park located at the mouth of the Sumida River on Tokyo Bay. Though nestled amongst the skyscrapers of the Shiodome district, Hama Rikyu Gardens is a quiet oasis where visitors can enjoy nature and tea in a sculpted Japanese garden. While much of the park is accessible, some places – including the tea house – are not accessible by wheelchair. Despite this, the gardens can be a great place to relax and see an historic garden.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Hama Rikyu',
  city: 'Chuo',
  toilet: 'has_many',
  elevator: 'no',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"
