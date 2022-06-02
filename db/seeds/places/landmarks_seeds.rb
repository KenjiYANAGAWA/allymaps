### Landmarks

puts "..."
file = File.open("app/assets/images/places/landmarks/harajukugirls.webp")
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
file = File.open("app/assets/images/places/landmarks/ginza.webp")
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
file = File.open("app/assets/images/places/landmarks/akihabara.webp")
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
file = File.open("app/assets/images/places/landmarks/daikanyama-feature.webp")
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
