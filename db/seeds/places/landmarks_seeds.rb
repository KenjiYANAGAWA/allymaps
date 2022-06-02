### Landmarks

puts "..."
file = File.open("app/assets/images/places/landmarks/ameyoko.webp")
place = Place.create!(
  name: 'Ameyoko',
  description: "If you are in Tokyo and looking for a lively market to shop and eat, then Ameyoko is one of the best places to visit.  With many outdoor stores and restaurants, it is surprisingly accessible in its own way.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Ameya Yokocho',
  city: 'Taito',
  toilet: 'no',
  elevator: 'nonessential',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/skytree.jpeg")
place = Place.create!(
  name: 'Tokyo Skytree',
  description: "Tokyo Skytree (東京スカイツリー, Tōkyō Sukaitsurī, stylized TOKYO SKYTREE) is a broadcasting and observation tower in Sumida, Tokyo. It became the tallest structure in Japan in 2010[3] and reached its full height of 634 meters (2,080 ft) in March 2011, making it the tallest tower in the world, displacing the Canton Tower,[4][5] and the third tallest structure in the world after the Merdeka 118 (678.9 m or 2,227 ft) and the Burj Khalifa (829.8 m or 2,722 ft).[6] It is also the tallest freestanding structure in the OECD, the G20 and G7 countries.",
  toilet: 'has_many',
  elevator: 'has',
  parking: 'has',
  charging: 'no_data',
  area: 'fully',
  # address: '1 Chome-1-2 Oshiage, Sumida City, Tokyo, 131-0045, Japan',
  address: 'Tokyo Skytree',
  city: 'Sumida',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/tt.webp")
place = Place.create!(
  name: 'Tokyo Tower',
  description: "The distinct shape and bright colors of Tokyo Tower make it stand out in Tokyo’s cluttered skyline whether night or day.  Originally a broadcasting tower, Tokyo Tower is also a tourist attraction and a symbol of Japan’s post-war resurgence.  Being built in the 1950s, it wasn’t originally as wheelchair accessible as newer observatories but with recent renovations, came more accessibility.  Nevertheless, it is located on a steep hill and wheelchair users have some restrictions in accessing the top observation deck, but it still can offer a nice outing for those with disabilities.",
  toilet: 'has_many',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  # address: '1 Chome-1-2 Oshiage, Sumida City, Tokyo, 131-0045, Japan',
  address: 'Tokyo Tower',
  city: 'Minato',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/tokyogov.webp")
place = Place.create!(
  name: 'Tokyo Metropolitan Government Building',
  description: "Tokyo Metropolitan Government Building",
  toilet: 'has_many',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'fully',
  # address: '1 Chome-1-2 Oshiage, Sumida City, Tokyo, 131-0045, Japan',
  address: 'Tokyo Metropolitan Government Building',
  city: 'Shinjuku',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/tsukiji.webp")
place = Place.create!(
  name: 'Tsukiji Fish Market',
  description: "Tsukiji Fish Market, was biggest wholesale fish and seafood market in the world, is full of energy and delicious food. However, it can be overwhelming and possibly dangerous for those with disabilities.",
  toilet: 'has_many',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  # address: '1 Chome-1-2 Oshiage, Sumida City, Tokyo, 131-0045, Japan',
  address: 'Tsukiji Fish Market',
  city: 'Chuo',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/toyosu.webp")
place = Place.create!(
  name: 'Toyosu Fish Market',
  description: "Toyosu Market is the largest wholesale fish and seafood market in the world and is fully wheelchair accessible. However, walking distances may be challenging for those who tire easily.",
  toilet: 'has_many',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'fully',
  # address: '1 Chome-1-2 Oshiage, Sumida City, Tokyo, 131-0045, Japan',
  address: '豊洲市場',
  city: 'Koto',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/kokugikan.webp")
place = Place.create!(
  name: 'Ryogoku Kokugikan',
  description: "Opened in 1985, the Ryogoku Kokugikan has a capacity of 11,098 people.  The arena houses sumo wrestling tournaments (honbasho), hosting the hatsu (new year) basho in January, the natsu (summer) basho in May, and the aki (autumn) basho in September. It is also used for boxing, pro wrestling, as well as music concerts.  In fact, it is the host of the boxing competition for the 2020 Summer Olympics.",
  toilet: 'has_one',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  # address: '1 Chome-1-2 Oshiage, Sumida City, Tokyo, 131-0045, Japan',
  address: 'Ryogoku Kokugikan',
  city: 'Sumida',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/shibsky.webp")
place = Place.create!(
  name: 'Shibuya Sky',
  description: "Nearly as high as the Tokyo Tower’s top observation deck, and located on the highest building in Shibuya, Shibuya Sky provides two very accessible and wonderful viewing levels of the Tokyo Skyline and its many landmarks.",
  toilet: 'has_one',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'fully',
  # address: '1 Chome-1-2 Oshiage, Sumida City, Tokyo, 131-0045, Japan',
  address: 'Shibuya Sky',
  city: 'Shibuya',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

#
# puts "..."
# file = File.open("app/assets/images/places/landmarks/arashiyama.webp")
# place = Place.create!(
#   name: 'Kyoto Arashiyama',
#   description: "Situated in the foothills off the main tourist area in Arashiyama, this famous bamboo grove is one of Kyoto’s most visited locations. The forest itself is comprised of several main groves, but the most celebrated is the westernmost one located behind Tenryuji Zen temple. The tall bamboo here is particularly nice on sunny, breezy days when you can experience komorebi – a Japanese word used to describe soft, dappled light as it filters through leaves and branches. The grove itself is smooth and paved and is an easy ride for wheelchair users. There are some sloping areas and crowding in areas, but nothing that should cause difficulty. Tenryuji Zen Temple is located near the beginning  of the path through the groves. While the temple grounds have gravel paths and some areas are inaccessible due to steps, many parts of the temple are wheelchair accessible.  A wheelchair accessible toilet is available within the temple grounds, however, since the temple is separate from the bamboo groves, it can only be used during temple hours (8:30 to 17:30; until 17:00 from late October to late March) and after paying the entrance fee of 500 yen.",
#   toilet: 'has_one',
#   elevator: 'nonessential',
#   parking: 'no_data',
#   charging: 'no_data',
#   area: 'mostly',
#   # address: '4 Sagaogurayama Tabuchiyamachō, Kyoto, Kyoto, 616-8394, Japan',
#   address: 'Kyoto Arashiyama',
#   city: 'Kyoto',
#   category: 'landmark'
# )
# place.photos.attach(io: file, filename: 'place.jpeg')
# puts "#{place.name} created"

# puts "..."
# file = File.open("app/assets/images/places/landmarks/kyoto-tower.jpg")
# place = Place.create!(
#   name: 'Kyoto Tower',
#   description: "Kyoto Tower offers views of the ancient capital that are worth seeing and adaptations to the old building have made it relatively wheelchair accessible. Kyoto Tower was planned to be constructed and completed in time for the 1964 Summer Olympics in Tokyo, but was completed closer to the end of 1964. While only 131 meters tall, due to rules in Kyoto that limit the height of buildings, it is the tallest structure in the city.",
#   toilet: 'no',
#   elevator: 'has',
#   parking: 'no',
#   charging: 'no_data',
#   area: 'mostly',
#   # address: '721-1 Karasuma-dori Higashi Shiokoji-cho Shimogyo-ku, Kyoto, Kyoto, 600-8216, Japan',
#   address: 'Kyoto Tower',
#   city: 'Kyoto',
#   category: 'landmark'
# )
# place.photos.attach(io: file, filename: 'place.jpeg')
# puts "#{place.name} created"
#
# puts "..."
# file = File.open("app/assets/images/places/landmarks/gunkanjima.png")
# place = Place.create!(
#   name: 'Gunkanjima',
#   description: "Though it is officially called Hashima, the small mining island off the cost of Nagasaki came to be called Gunkanjima (Battleship Island) because the silhouette of the over-built island looks like a naval battleship.  Its eerie look even became the inspiration for a Bond villain’s hideout. Coal was first discovered on Gunkanjima in 1810 by the feudal lord of Saga, and after mining operations continued to build up, it was purchased by the Mitsubishi Corporation and permanently inhabited from 1887 onward. Though the island is only 480 meters long and 150 meters wide, it was home to 5000 residents – both miners and their families. The island was expanded and high sea walls were erected to protect the mining operations, residential space, schools, restaurants, shops, public bath and hospital. Operations were closed down in 1974 and the residents were required to leave the island. The buildings slowly gave way to the elements, leaving a haunting atmosphere. It is great to see local organizations help visitors with disabilities visit an otherwise inaccessible location.  The trip to Gunkanjima is a bit strenuous for some travelers, but is a unique opportunity that is worth the extra effort.",
#   # address: 'Takashimamachi, Nagasaki, 851-1315, Japan',
#   address: 'Gunkanjima',
#   city: 'Nagasaki',
#   toilet: 'has_one',
#   elevator: 'nonessential',
#   parking: 'no',
#   charging: 'no_data',
#   area: 'partly',
#   category: 'landmark'
# )
# place.photos.attach(io: file, filename: 'place.jpeg')
# puts "#{place.name} created"
