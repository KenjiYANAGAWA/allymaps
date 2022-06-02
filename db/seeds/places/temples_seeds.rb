### Temples and Shrines

puts "..."
file = File.open("app/assets/images/places/temples/kameidotenjin.webp")
place = Place.create!(
  name: 'Kameido Tenjin',
  description: "Kameido Tenjin Shrine is hidden gem in Tokyo with a beautiful wisteria festival and is mostly accessible. Keep in mind that the most convenient accessible toilets are at the train station – a 15 minute walk away.",
  # address: '68 Fukakusa Yabunouchicho, Fushimi-ku, Kyoto, Kyoto, 612-0882, Japan',
  address: 'Kameido Tenjin',
  city: 'Koto',
  toilet: 'no',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/temples/sengakuji.webp")
place = Place.create!(
  name: 'Sengakuji',
  description: "Sengakuji Temple is famous as the final resting place of the 47 Ronin who gave their lives to protect their lord’s honor. The grave site and museum are wheelchair accessible.",
  # address: '68 Fukakusa Yabunouchicho, Fushimi-ku, Kyoto, Kyoto, 612-0882, Japan',
  address: 'Sengakuji',
  city: 'Minato',
  toilet: 'has_one',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'fully',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/temples/nezu.webp")
place = Place.create!(
  name: 'Nezu Jinja',
  description: "Nezu Jinja is known as one of Tokyo’s most beautiful shrines. However, it has many challenges for those in wheelchairs or other disabilities.",
  # address: '68 Fukakusa Yabunouchicho, Fushimi-ku, Kyoto, Kyoto, 612-0882, Japan',
  address: 'Nezu Jinja',
  city: 'Bunkyo',
  toilet: 'has_one',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'partly',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/temples/tsukijihonganji.webp")
place = Place.create!(
  name: 'Tsukiji Honganji',
  description: "Located next to Tsukiji Fish Market, Tsukiji Honganji Temple is a completely wheelchair accessible temple that blends many different types of architectural styles.",
  # address: '68 Fukakusa Yabunouchicho, Fushimi-ku, Kyoto, Kyoto, 612-0882, Japan',
  address: 'Tsukiji Honganji',
  city: 'Chuo',
  toilet: 'has_many',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'fully',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/temples/yasukuni.webp")
place = Place.create!(
  name: 'Yasukuni Shrine',
  description: "Yasukuni Shrine is home to Tokyo’s representative cherry tree and is mostly wheelchair accessible. Getting to the shrine from the station requires going up a hill, going over a bit of cobblestone, and then up another short hill.",
  # address: '68 Fukakusa Yabunouchicho, Fushimi-ku, Kyoto, Kyoto, 612-0882, Japan',
  address: 'Yasukuni Jinja',
  city: 'Chiyoda',
  toilet: 'has_many',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/temples/zojoji.webp")
place = Place.create!(
  name: 'Zojoji',
  description: 'Zojoji Temple is one of Tokyo’s most important temples. While it may not look wheelchair accessible, a large part of the temple grounds can be accessed by wheelchair users and those with mobility needs.',
  # address: '68 Fukakusa Yabunouchicho, Fushimi-ku, Kyoto, Kyoto, 612-0882, Japan',
  address: 'Zojoji',
  city: 'Minato',
  toilet: 'no_data',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/temples/hie.webp")
place = Place.create!(
  name: 'Hie Jinja',
  description: 'Hie Shrine is home to the guardian deity of Tokyo and the Sanno Matsuri. Its steep hill makes it very difficult for those with wheelchairs or other mobility aids.',
  # address: '68 Fukakusa Yabunouchicho, Fushimi-ku, Kyoto, Kyoto, 612-0882, Japan',
  address: 'Hie Jinja',
  city: 'Chiyoda',
  toilet: 'no',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/temples/hanazono.jpeg")
place = Place.create!(
  name: 'Hanazono Jinja',
  description: 'Literally surrounded by the tall buildings that make up Shinjuku, Hanazono Shrine is a great example of the ancient and modern mixing in Japan. While the main hall is not accessible, the grounds are easy to see for wheelchair users.',
  # address: '68 Fukakusa Yabunouchicho, Fushimi-ku, Kyoto, Kyoto, 612-0882, Japan',
  address: 'Hanazono Jinja',
  city: 'Shinjuku',
  toilet: 'has_one',
  elevator: 'no',
  parking: 'no_data',
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
file = File.open("app/assets/images/places/temples/meijijingu.webp")
place = Place.create!(
  name: 'Meiji Jingu',
  description: "The Meiji Shrine, or Meiji Jingu, is an essential stop for anyone visiting Japan.  It is a great way to see some Japanese culture, enjoy a walk through the woods, and – if lucky – see a traditional Japanese wedding.  The accessibility is a bit of a mixed bag, though.  While there is a nice wheelchair accessible toilet and great ramps right up to the main sanctuary, it is found at the end of a rather long walk down a gravel path which may be difficult for people who are slow walkers or use manual wheelchairs.  Check out our review!",
  # address: '1-1 Yoyogikamizonocho, Shibuya, Tokyo, 151-0052, Japan',
  address: 'Meiji Jingu',
  city: 'Shibuya',
  toilet: 'has_one',
  elevator: 'nonessential',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

# puts "..."
# file = File.open("app/assets/images/places/temples/fushimiinari.jpeg")
# place = Place.create!(
#   name: 'Fushimi Inari Shrine',
#   description: 'Fushimi Inari Shrine is an iconic site in Kyoto with thousands of torii gates that wind up a forested mountain. With a bit of effort, visitors in wheelchairs can see the first stretch of the path and the first two shrines.',
#   # address: '68 Fukakusa Yabunouchicho, Fushimi-ku, Kyoto, Kyoto, 612-0882, Japan',
#   address: 'Fushimi Inari Shrine',
#   city: 'Kyoto',
#   toilet: 'has_many',
#   elevator: 'has',
#   parking: 'has',
#   charging: 'no_data',
#   area: 'partly',
#   category: 'temple'
# )
# place.photos.attach(io: file, filename: 'place.jpeg')
# puts "#{place.name} created"

# puts "..."
# file = File.open("app/assets/images/places/temples/kinkakuji.webp")
# place = Place.create!(
#   name: 'Kinkakuji',
#   description: "Kinkakuji, or the Golden Pavilion, is one of the top stops for anyone visiting Kyoto, and one of Japan’s most popular buildings. Originally a shogun’s estate, it is now a Buddhist temple and is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.  The site near the pavilion is wheelchair accessible, but much of the gardens are not.",
#   # address: '1 Kinkakujicho, Kita-ku, Kyoto, Kyoto, 603-8361, Japan',
#   address: 'Kinkakuji',
#   city: 'Kyoto',
#   toilet: 'has_one',
#   elevator: 'nonessential',
#   parking: 'no_data',
#   charging: 'no_data',
#   area: 'partly',
#   category: 'temple'
# )
# place.photos.attach(io: file, filename: 'place.jpeg')
# puts "#{place.name} created"
