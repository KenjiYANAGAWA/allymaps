### Temples and Shrines

puts "..."
file = File.open("app/assets/images/places/temples/fushimiinari.jpeg")
place = Place.create!(
  name:'Fushimi Inari Shrine',
  description: 'Fushimi Inari Shrine is an iconic site in Kyoto with thousands of torii gates that wind up a forested mountain. With a bit of effort, visitors in wheelchairs can see the first stretch of the path and the first two shrines.',
  address: '68 Fukakusa Yabunouchicho, Fushimi-ku, Kyoto, Kyoto, 612-0882, Japan',
  city: 'Kyoto',
  toilet: 'has_many',
  elevator: 'has',
  parking: 'has',
  charging: 'no_data',
  area: 'some',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/temples/kamakura_daibutsu.jpeg")
place = Place.create!(
  name:'Kōtoku-in',
  description: "The Great Buddha of Kamakura (鎌倉大仏, Kamakura Daibutsu) is a bronze statue of Amida Buddha, which stands on the grounds of Kotokuin Temple. With a height of 11.4 meters, it has long been the second tallest bronze Buddha statue in Japan, surpassed only by the statue in Nara's Todaiji Temple and some recent creations. The statue was cast in 1252 and originally located inside a large temple hall. However, the temple buildings were destroyed multiple times by typhoons and a tsunami in the 14th and 15th centuries. So, since the late 15th century, the Buddha has been standing in the open air.",
  address: '4 Chome-2-28 Hase, Kamakura, Kanagawa, 248-0016, Japan',
  city: 'Kanagawa',
  toilet: 'has_one',
  elevator: 'no_data',
  parking: 'has',
  charging: 'no_data',
  area: 'most',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/temples/sensoji.webp")
place = Place.create!(
  name:'Sensoji',
  description: "Sensoji (Sensō-ji) is an ancient Buddhist temple located in Tokyo's cultural capital, Asakusa. Not only is Sensoji Tokyo’s oldest temple, it is one of the most significant.  The area is very wheelchair accessible and definitely a must-visit! As mentioned above, Sensoji and the Asakusa is area one of the most visited sites in Japan.  The Kaminarimon is a landmark that most people use as a meeting point and, since it is the entrance to the complex, even tour buses that park at the back walk there for photo opportunities.  Following from there, Nakamise-dori is not very wide and is filled with people slowly strolling and focusing on buying souveniers – meaning they have a high probability of bumping into a wheelchair user. Getting close to the shops to take a look can be difficult as you get swept along with the crowd and  getting into the shops is next to impossible.  The staff are very used to foreigners and are there to sell goods, so they are very friendly.  Most owners run shops that have been operating for generations and feel a strong connection to both the temple and the local community.  While most do sell souvenirs, many still sell items to be used by local residents.",
  address: '2 Chome-3-1 Asakusa, Taito, Tokyo, 111-0032, Japan',
  city: 'Taito',
  toilet: 'has_many',
  elevator: 'nonessential',
  parking: 'no_data',
  charging: 'no_data',
  area: 'all',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/temples/kinkakuji.webp")
place = Place.create!(
  name:'Kinkakuji',
  description: "Kinkakuji, or the Golden Pavilion, is one of the top stops for anyone visiting Kyoto, and one of Japan’s most popular buildings. Originally a shogun’s estate, it is now a Buddhist temple and is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.  The site near the pavilion is wheelchair accessible, but much of the gardens are not.",
  address: '1 Kinkakujicho, Kita-ku, Kyoto, Kyoto, 603-8361, Japan',
  city: 'Kyoto',
  toilet: 'has_one',
  elevator: 'nonessential',
  parking: 'no_data',
  charging: 'no_data',
  area: 'some',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

### Landmarks

puts "..."
file = File.open("app/assets/images/places/landmarks/gunkanjima.png")
place = Place.create!(
  name:'Gunkanjima',
  description: "Though it is officially called Hashima, the small mining island off the cost of Nagasaki came to be called Gunkanjima (Battleship Island) because the silhouette of the over-built island looks like a naval battleship.  Its eerie look even became the inspiration for a Bond villain’s hideout. Coal was first discovered on Gunkanjima in 1810 by the feudal lord of Saga, and after mining operations continued to build up, it was purchased by the Mitsubishi Corporation and permanently inhabited from 1887 onward. Though the island is only 480 meters long and 150 meters wide, it was home to 5000 residents – both miners and their families. The island was expanded and high sea walls were erected to protect the mining operations, residential space, schools, restaurants, shops, public bath and hospital. Operations were closed down in 1974 and the residents were required to leave the island. The buildings slowly gave way to the elements, leaving a haunting atmosphere. It is great to see local organizations help visitors with disabilities visit an otherwise inaccessible location.  The trip to Gunkanjima is a bit strenuous for some travelers, but is a unique opportunity that is worth the extra effort.",
  address: 'Takashimamachi, Nagasaki, 851-1315, Japan',
  city: 'Nagasaki',
  toilet: 'has_one',
  elevator: 'nonessential',
  parking: 'no',
  charging: 'no_data',
  area: 'some',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/akihabara.webp")
place = Place.create!(
  name:'Akihabara',
  description: "Akihabara, or Akiba, has gained worldwide recognition as the heart of Japan’s high-tech and otaku (ie nerd/geek) culture. Almost everyone who comes to Japan wants to visit it to shop, find anime/manga, go to a maid cafe, or see AKB 48. However exciting it is, it is not terribly wheelchair accessible if you want to really dig into the culture. With a disability, it can be a difficult, but still worthwhile place to visit.",
  address: 'Akihabara Station, Chiyoda, Tokyo, 101-0028, Japan',
  city: 'Chiyoda',
  toilet: 'no_data',
  elevator: 'nonessential',
  parking: 'no_data',
  charging: 'no_data',
  area: 'some',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/daikanyama-feature.webp")
place = Place.create!(
  name:'Daikanyama',
  description: "Daikanyama is often referred to as Tokyo's Brooklyn and features high-end fashion boutiques and trendy cafes. Unfortunately, a large majority of the smaller shops are not wheelchair accessible. Daikanyama can be accessed from Daikanyama Station on the Tokyu Toyoko Line. The station is wheelchair accessible and has a wheelchair accessible toilet.",
  address: 'Daikanyamacho, Shibuya, Tokyo, 150-0034, Japan',
  city: 'Shibuya',
  toilet: 'no_data',
  elevator: 'nonessential',
  parking: 'no_data',
  charging: 'no_data',
  area: 'some',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/usj.webp")
place = Place.create!(
  name:'Universal Studios Japan',
  description: "Universal Studios Japan is one of the most popular attractions in Osaka and offers excitement, famous characters, rides, shows and more. While it is fairly accessible in general, some of the most popular rides – including Harry Potter and the Forbidden Journey – are not accessible to guests with mobility difficulties. Universal Studios Japan remains one of this country’s more accessible tourist attractions. For starters, ample parking for wheelchair users is available, and the spaces are extra-long to allow room for loading and unloading equipment. USJ offers discounts at the gate to holders of red techo (an identification card for individuals with disabilities available to those covered by the National Health Insurance) and a companion. A special map detailing resources for those with special needs, called Support Book, is available in English and Japanes",
  address: '2-1-33 Sakurajima, Konohana-ku, Osaka, Osaka, 554-0031, Japan',
  city: 'Konohana-ku',
  toilet: 'has_many',
  elevator: 'nonessential',
  parking: 'has',
  charging: 'no_data',
  area: 'most',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/japanese-sword-museum.webp")
place = Place.create!(
  name:'Japanese Sword Museum',
  description: "The Japanese Sword Museum is fully accessible and located near a number of other museums that are sure to please history buffs. The museum building is new and very flat. Wheelchair parking is available at the front of the museum.  Tactile paving leads from the entrance to the ticket gate, but after that there are only tactile blocks indicating stairs.",
  toilet: 'has_many',
  elevator: 'has',
  parking: 'has',
  charging: 'no_data',
  area: 'most',
  address: '1-12-9, Yokoami, Sumida, Tokyo, 130-0015, Japan',
  city: 'Sumida',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/arashiyama.webp")
place = Place.create!(
  name:'Kyoto Arashiyama',
  description: "Situated in the foothills off the main tourist area in Arashiyama, this famous bamboo grove is one of Kyoto’s most visited locations. The forest itself is comprised of several main groves, but the most celebrated is the westernmost one located behind Tenryuji Zen temple. The tall bamboo here is particularly nice on sunny, breezy days when you can experience komorebi – a Japanese word used to describe soft, dappled light as it filters through leaves and branches. The grove itself is smooth and paved and is an easy ride for wheelchair users. There are some sloping areas and crowding in areas, but nothing that should cause difficulty. Tenryuji Zen Temple is located near the beginning  of the path through the groves. While the temple grounds have gravel paths and some areas are inaccessible due to steps, many parts of the temple are wheelchair accessible.  A wheelchair accessible toilet is available within the temple grounds, however, since the temple is separate from the bamboo groves, it can only be used during temple hours (8:30 to 17:30; until 17:00 from late October to late March) and after paying the entrance fee of 500 yen.",
  toilet: 'has_one',
  elevator: 'nonessential',
  parking: 'no_data',
  charging: 'no_data',
  area: 'most',
  address: '4 Sagaogurayama Tabuchiyamachō, Kyoto, Kyoto, 616-8394, Japan',
  city: 'Kyoto',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/kyoto-tower.jpg")
place = Place.create!(
  name:'Kyoto Tower',
  description: "Kyoto Tower offers views of the ancient capital that are worth seeing and adaptations to the old building have made it relatively wheelchair accessible. Kyoto Tower was planned to be constructed and completed in time for the 1964 Summer Olympics in Tokyo, but was completed closer to the end of 1964. While only 131 meters tall, due to rules in Kyoto that limit the height of buildings, it is the tallest structure in the city.",
  toilet: 'no',
  elevator: 'has',
  parking: 'no',
  charging: 'no_data',
  area: 'most',
  address: '721-1 Karasuma-dori Higashi Shiokoji-cho Shimogyo-ku, Kyoto, Kyoto, 600-8216, Japan',
  city: 'Kyoto',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/tokorozawa_koku_kinenkan.jpeg")
place = Place.create!(
  name: 'Tokorozawa Aviation Museum',
  description: "The Tokorozawa Aviation Museum (所沢航空発祥記念館, Tokorozawa Kōkū Hasshō Kinenkan) is a museum located in the city of Tokorozawa, Saitama dedicated to the history of aviation in Japan. It contains aircraft and other displays (many of which are interactive) and an IMAX theatre. Located on the site of Japan's first airfield which started operations in 1911 with a flight by Yoshitoshi Tokugawa, the original single runway is still visible and has been incorporated into a larger multifunction park adjacent to the museum. It is located in the Tokorozawa Aviation Memorial Park.",
  toilet: 'has_many',
  elevator: 'no_data',
  parking: 'has',
  charging: 'no_data',
  area: 'most',
  address: '1-13 Namiki, Tokorozawa-shi, Saitama, 359-0042, Japan',
  city: 'Saitama',
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
  area: 'all',
  address: '1 Chome-1-2 Oshiage, Sumida City, Tokyo, 131-0045, Japan',
  city: 'Sumida',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/landmarks/kokuritsu_kagaku_hakubutsukan.jpeg")
place = Place.create!(
  name: 'National Museum of Nature and Science',
  description: "The National Museum of Nature and Science (国立科学博物館, Kokuritsu Kagaku Hakubutsukan) is in the northeast corner of Ueno Park in Tokyo. The museum has exhibitions on pre-Meiji science in Japan. A life-size blue whale model and a steam locomotive are on display outside.",
  toilet: 'has_many',
  elevator: 'has',
  parking: 'has',
  charging: 'no_data',
  area: 'all',
  address: '7-20 Uenokoen, Taito City, Tokyo, 110-8718, Japan',
  city: 'Taito',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

### Parks

puts "..."
file = File.open("app/assets/images/places/parks/yoyogi_park.jpeg")
place = Place.create!(
  name:'Yoyogi Park',
  description: "Yoyogi Park is a park in Yoyogikamizonocho, Shibuya, Tokyo, Japan, located adjacent to Harajuku Station and Meiji Shrine. The park is a popular Tokyo destination.",
  toilet: 'has_many',
  elevator: 'nonessential',
  parking: 'has',
  charging: 'no_data',
  area: 'most',
  address: '2-1 Yoyogikamizonocho, Shibuya, Tokyo, 151-0052, Japan',
  city: 'Shibuya',
  category: 'park'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/parks/mother_bokujo.jpeg")
place = Place.create!(
  name:'Mother Farm',
  description: "Mother Farm is accessible via public transportation from Tokyo Station. Although it is a bit far from Tokyo, it is certainly fun enough to make the visit worthwhile! This wide-open farm on top of a mountain is not only exciting for kids, but adults as well. Mother Farm is a massive place at an overwhelming 2.5 million square meters! The vast meadowland is big enough to contain 350 football stadiums and is home to a variety of animals. This is truly a hilltop animal paradise.",
  toilet: 'has_many',
  elevator: 'nonessential',
  parking: 'has',
  charging: 'no_data',
  area: 'most',
  address: '940-3 Tagura, Futtsu, Chiba, 299-1731, Japan',
  city: 'Futtsu Chiba',
  category: 'park'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

### Restaurants

puts "..."
file = File.open("app/assets/images/places/restaurants/meiji_kinenn_kan.jpeg")
place = Place.create!(
  name:'Meiji Kinenkan',
  description: "Rebuilt, late-1800s reception hall popular for weddings, with green grounds & a summer beer garden. Meiji Kinenkan features five restaurants that stimulate all of your senses, serving expertly prepared dishes using the finest seasonal ingredients Japan has to offer.",
  toilet: 'has_one',
  elevator: 'no_data',
  parking: 'has',
  charging: 'no_data',
  area: 'most',
  address: '2 Chome-2-23 Motoakasaka, Minato City, Tokyo, 107-8507, Japan',
  city: 'Minato',
  category: 'restaurant'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

# toilet: { no_data: 0, no: 1, has_one: 2, has_many: 3 }, _suffix: true
# charging: { no_data: 0, no: 1, has: 2 }, _suffix: true
# area: { no_data: 0, no: 1, some: 2, most: 3, all: 4 }, _suffix: true
# elevator: { no_data: 0,  no: 1, has: 2, nonessential: 3 }, _suffix: true
# parking: { no_data: 0, no: 1, has: 2 }, _suffix: true

# file = File.open("app/assets/images/places/temples/kamakura_daibutsu.jpeg")
# place = Place.create!(
#   name:'Kōtoku-in',
#   description: "The Great Buddha of Kamakura (鎌倉大仏, Kamakura Daibutsu) is a bronze statue of Amida Buddha, which stands on the grounds of Kotokuin Temple. With a height of 11.4 meters, it has long been the second tallest bronze Buddha statue in Japan, surpassed only by the statue in Nara's Todaiji Temple and some recent creations. The statue was cast in 1252 and originally located inside a large temple hall. However, the temple buildings were destroyed multiple times by typhoons and a tsunami in the 14th and 15th centuries. So, since the late 15th century, the Buddha has been standing in the open air.",
#   address: '4 Chome-2-28 Hase, Kamakura, Kanagawa, 248-0016, Japan',
#   city: 'Kanagawa',
#   toilet: 'has_one',
#   elevator: 'no_data',
#   parking: 'has',
#   charging: 'no_data',
#   area: 'most'
# )
# place.photos.attach(io: file, filename: 'place.jpeg')
