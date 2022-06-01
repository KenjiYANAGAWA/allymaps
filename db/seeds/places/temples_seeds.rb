### Temples and Shrines

puts "..."
file = File.open("app/assets/images/places/temples/fushimiinari.jpeg")
place = Place.create!(
  name: 'Fushimi Inari Shrine',
  description: 'Fushimi Inari Shrine is an iconic site in Kyoto with thousands of torii gates that wind up a forested mountain. With a bit of effort, visitors in wheelchairs can see the first stretch of the path and the first two shrines.',
  # address: '68 Fukakusa Yabunouchicho, Fushimi-ku, Kyoto, Kyoto, 612-0882, Japan',
  address: 'Fushimi Inari Shrine',
  city: 'Kyoto',
  toilet: 'has_many',
  elevator: 'has',
  parking: 'has',
  charging: 'no_data',
  area: 'partly',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/temples/kamakura_daibutsu.jpeg")
place = Place.create!(
  name: 'Kōtoku-in',
  description: "The Great Buddha of Kamakura (鎌倉大仏, Kamakura Daibutsu) is a bronze statue of Amida Buddha, which stands on the grounds of Kotokuin Temple. With a height of 11.4 meters, it has long been the second tallest bronze Buddha statue in Japan, surpassed only by the statue in Nara's Todaiji Temple and some recent creations. The statue was cast in 1252 and originally located inside a large temple hall. However, the temple buildings were destroyed multiple times by typhoons and a tsunami in the 14th and 15th centuries. So, since the late 15th century, the Buddha has been standing in the open air.",
  # address: '4 Chome-2-28 Hase, Kamakura, Kanagawa, 248-0016, Japan',
  address: 'Kōtoku-in',
  city: 'Kanagawa',
  toilet: 'has_one',
  elevator: 'no_data',
  parking: 'has',
  charging: 'no_data',
  area: 'mostly',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/temples/sensoji.webp")
place = Place.create!(
  name: 'Sensoji',
  description: "Sensoji (Sensō-ji) is an ancient Buddhist temple located in Tokyo's cultural capital, Asakusa. Not only is Sensoji Tokyo’s oldest temple, it is one of the most significant.  The area is very wheelchair accessible and definitely a must-visit! As mentioned above, Sensoji and the Asakusa is area one of the most visited sites in Japan.  The Kaminarimon is a landmark that most people use as a meeting point and, since it is the entrance to the complex, even tour buses that park at the back walk there for photo opportunities.  Following from there, Nakamise-dori is not very wide and is filled with people slowly strolling and focusing on buying souveniers – meaning they have a high probability of bumping into a wheelchair user. Getting close to the shops to take a look can be difficult as you get swept along with the crowd and  getting into the shops is next to impossible.  The staff are very used to foreigners and are there to sell goods, so they are very friendly.  Most owners run shops that have been operating for generations and feel a strong connection to both the temple and the local community.  While most do sell souvenirs, many still sell items to be used by local residents.",
  # address: '2 Chome-3-1 Asakusa, Taito, Tokyo, 111-0032, Japan',
  address: 'Sensoji',
  city: 'Taito',
  toilet: 'has_many',
  elevator: 'nonessential',
  parking: 'no_data',
  charging: 'no_data',
  area: 'fully',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/temples/kinkakuji.webp")
place = Place.create!(
  name: 'Kinkakuji',
  description: "Kinkakuji, or the Golden Pavilion, is one of the top stops for anyone visiting Kyoto, and one of Japan’s most popular buildings. Originally a shogun’s estate, it is now a Buddhist temple and is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.  The site near the pavilion is wheelchair accessible, but much of the gardens are not.",
  # address: '1 Kinkakujicho, Kita-ku, Kyoto, Kyoto, 603-8361, Japan',
  address: 'Kinkakuji',
  city: 'Kyoto',
  toilet: 'has_one',
  elevator: 'nonessential',
  parking: 'no_data',
  charging: 'no_data',
  area: 'partly',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"
