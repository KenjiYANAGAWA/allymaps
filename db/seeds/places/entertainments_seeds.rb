
puts "..."
file = File.open("app/assets/images/places/entertainments/disney.webp")
place = Place.create!(
  name: 'Tokyo Disneyland',
  description: "Tokyo Disneyland is located just outside of Tokyo and offers fun for the whole family.  While much of the theme park is accessible, some rides are not.",
  # address: '2-1-33 Sakurajima, Konohana-ku, Osaka, Osaka, 554-0031, Japan',
  address: 'Tokyo Disneyland',
  city: 'Urayasu',
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
file = File.open("app/assets/images/places/entertainments/team.webp")
place = Place.create!(
  name: 'teamLab Borderless',
  description: "Officially known as “Mori Building Digital Art Museum: teamLab Borderless,” this attraction is far more that most typical art museum you would visit. Lights, sounds, and interactable features found within will not only entertain but provide experiences that will take guests to places otherworldly.",
  # address: '2-1-33 Sakurajima, Konohana-ku, Osaka, Osaka, 554-0031, Japan',
  address: 'teamLab Borderless',
  city: 'Koto',
  toilet: 'has_many',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/entertainments/nakano.webp")
place = Place.create!(
  name: 'Nakano Broadway',
  description: "Nakano Broadway is a paradise for lovers of anime and manga that is less visited than the busy streets of Akihabara, but no less rich in otaku culture. While being part of a shopping mall benefits the accessibility, the aging building and small stores certainly have accessibility challenges.",
  # address: '2-1-33 Sakurajima, Konohana-ku, Osaka, Osaka, 554-0031, Japan',
  address: 'Nakano Broadway',
  city: 'Nakano',
  toilet: 'no',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'partly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/entertainments/noh.webp")
place = Place.create!(
  name: 'National Noh Theater',
  description: "The National Noh Theater is the principle theater in Tokyo for viewing Noh and Kyogen, two traditional forms of Japanese theater. It is a must visit for anyone with an interest in the performing arts who happens to find themselves traveling in Tokyo.",
  # address: '2-1-33 Sakurajima, Konohana-ku, Osaka, Osaka, 554-0031, Japan',
  address: 'National Noh Theater',
  city: 'Shibuya',
  toilet: 'has_many',
  elevator: 'no_data',
  parking: 'has',
  charging: 'no_data',
  area: 'fully',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/entertainments/kabukiza.webp")
place = Place.create!(
  name: 'Kabukiza',
  description: "The Kabukiza Theater is a tourist friendly way to delve into some traditional Japanese culture that is also very accessible to visitors with special needs.",
  # address: '2-1-33 Sakurajima, Konohana-ku, Osaka, Osaka, 554-0031, Japan',
  address: 'Kabukiza',
  city: 'Chuo',
  toilet: 'has_many',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"


# puts "..."
# file = File.open("app/assets/images/places/entertainments/usj.webp")
# place = Place.create!(
#   name: 'Universal Studios Japan',
#   description: "Universal Studios Japan is one of the most popular attractions in Osaka and offers excitement, famous characters, rides, shows and more. While it is fairly accessible in general, some of the most popular rides – including Harry Potter and the Forbidden Journey – are not accessible to guests with mobility difficulties. Universal Studios Japan remains one of this country’s more accessible tourist attractions. For starters, ample parking for wheelchair users is available, and the spaces are extra-long to allow room for loading and unloading equipment. USJ offers discounts at the gate to holders of red techo (an identification card for individuals with disabilities available to those covered by the National Health Insurance) and a companion. A special map detailing resources for those with special needs, called Support Book, is available in English and Japanes",
#   # address: '2-1-33 Sakurajima, Konohana-ku, Osaka, Osaka, 554-0031, Japan',
#   address: 'Universal Studios Japan',
#   city: 'Konohana-ku',
#   toilet: 'has_many',
#   elevator: 'nonessential',
#   parking: 'has',
#   charging: 'no_data',
#   area: 'mostly',
#   category: 'landmark'
# )
# place.photos.attach(io: file, filename: 'place.jpeg')
# puts "#{place.name} created"
