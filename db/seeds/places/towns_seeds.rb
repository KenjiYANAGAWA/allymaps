
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

puts "..."
file = File.open("app/assets/images/places/towns/kagurazaka.webp")
place = Place.create!(
  name: 'Kagurazaka',
  description: "Known for its traditional atmosphere and haute cuisine, Kagurazaka offers a side of Tokyo often missed by tourists.  Visitors with mobility challenges should be ready to deal with a large hill and many inaccessible restaurants.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Kagurazaka',
  city: 'Shinjuku',
  toilet: 'no_data',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'some',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/towns/kappabashi.webp")
place = Place.create!(
  name: 'Kappabashi Street',
  description: "Kappabashi Street is the largest street devoted to restaurant supplies in Japan and a good place to buy food samples, knives and lacquer ware. While not every store is accessible, many are partly or fully wheelchair accessible.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Kappabashi Street',
  city: 'Taito',
  toilet: 'no_data',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/towns/odaiba.webp")
place = Place.create!(
  name: 'Odaiba',
  description: "Odaiba is a shopping and leisure area built atop artificial islands in Tokyo Bay. It has great wheelchair accessibility including many accessible toilets and a wheelchair-friendly train. Getting from area to area can be a bit difficult if you tire easily, but it is definitely a place to unwind and have some fun.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Odaiba',
  city: 'Minato',
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
file = File.open("app/assets/images/places/towns/roppongi.webp")
place = Place.create!(
  name: 'Roppongi',
  description: "Roppongi’s mixture of art galleries, nightlife and corporate offices make it an interesting place to visit, and while Roppongi Hills and Tokyo Midtown are accessible, much of the nightlife is not.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Roppongi',
  city: 'Minato',
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
file = File.open("app/assets/images/places/towns/shibuya.webp")
place = Place.create!(
  name: 'Shibuya',
  description: "Known as a center for youth fashion and culture, Shibuya is a popular shopping and entertainment area that is full of lights, shopping, and crowds. As Shibuya is a large area, accessibility can of course vary with location. Many shops are accessible, but some are not. However, despite the crowds, Shibuya is a fun place to visit even in a wheelchair.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Shibuya',
  city: 'Shibuya',
  toilet: 'no_data',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'some',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/towns/shimokitazawa.webp")
place = Place.create!(
  name: 'Shimokitazawa',
  description: "Popular among artists, students and fans of youth subculture, Shimokitazawa is a fun place to explore. Accessibility is as varied as the stores in the neighborhood.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Shimokitazawa',
  city: 'Setagaya',
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
file = File.open("app/assets/images/places/towns/shinjuku.webp")
place = Place.create!(
  name: 'Shinjuku',
  description: "Shinjuku is an economic hub of Tokyo and sees more than 2 million passengers go through Shinjuku Station every day. This means that there are hundreds of restaurants, bars, and shops to explore and enjoy.  It is also home to Tokyo’s largest entertainment(/red light) district, Kabukicho.  Many hotels are located in the area and it is a must visit location for tourists.  The wheelchair accessibility ranges from great to horrible depending on what area you are in.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Shinjuku',
  city: 'Shinjuku',
  toilet: 'has_many',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'some',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'shimokitazawa.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/towns/yanaka.webp")
place = Place.create!(
  name: 'Yanaka',
  description: "Tokyo is an ever-evolving city and most districts have changed with the times. Yanaka, however, is one of the few areas in the city where you can feel like you have slipped back to a simpler time.

  Not too far from Ueno Park, and just a short walk from either Nippori Station or Sendagi Station, the Yanaka Ginza shopping district, which serves as a market to the many residents that live in the area – from bakers to barbers, to butchers and confectionery shops – offers a glimpse into life from a number of decades ago.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Yanaka',
  city: 'Taito',
  toilet: 'no_data',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'partly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"
