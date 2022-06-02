
puts "..."
file = File.open("app/assets/images/places/towns/akihabara.webp")
place = Place.create!(
  name: 'Akihabara',
  description: "Akihabara, or Akiba, has gained worldwide recognition as the heart of Japan’s high-tech and otaku (ie nerd/geek) culture. Almost everyone who comes to Japan wants to visit it to shop, find anime/manga, go to a maid cafe, or see AKB 48. However exciting it is, it is not terribly wheelchair accessible if you want to really dig into the culture. With a disability, it can be a difficult, but still worthwhile place to visit.",
  # address: 'Akihabara Station, Chiyoda, Tokyo, 101-0028, Japan',
  address: 'Akihabara',
  city: 'Chiyoda',
  toilet: 'no_data',
  elevator: 'nonessential',
  parking: 'no_data',
  charging: 'no_data',
  area: 'partly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/towns/daikanyama-feature.webp")
place = Place.create!(
  name: 'Daikanyama',
  description: "Daikanyama is often referred to as Tokyo's Brooklyn and features high-end fashion boutiques and trendy cafes. Unfortunately, a large majority of the smaller shops are not wheelchair accessible. Daikanyama can be accessed from Daikanyama Station on the Tokyu Toyoko Line. The station is wheelchair accessible and has a wheelchair accessible toilet.",
  # address: 'Daikanyamacho, Shibuya, Tokyo, 150-0034, Japan',
  address: 'Daikanyama',
  city: 'Shibuya',
  toilet: 'no_data',
  elevator: 'nonessential',
  parking: 'no_data',
  charging: 'no_data',
  area: 'partly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/towns/harajukugirls.webp")
place = Place.create!(
  name: 'Harajuku',
  description: "Sandwiched between Shinjuku and Shibuya, Harajuku is a great place to see youth culture up close.  Named after the area around Harakuju Station, and brought to many people’s attention by Gwen Stafani’s Harajuku Girls backup dancers, Harajuku not only offers the latest in youth fashion, but is also close to Meiji Shrine, Yoyogi Park, and Omotesando.  Unfortunately, it does have some accessibility challenges: crowds and crammed stores.  Those in wheelchairs may be constantly carried along with the current of people!",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Harajuku',
  city: 'Shibuya',
  toilet: 'no_data',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'partly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/towns/ginza.webp")
place = Place.create!(
  name: 'Ginza',
  description: "Though it was formerly rejected by foreigners for being “too Western,” the high-end shopping center of Ginza is now a popular place to visit. Luckily, if you are browsing the many expensive department buildings or flagship stores, the shopping experience is mostly accessible to those with disabilities.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Ginza',
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
