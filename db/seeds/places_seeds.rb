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
  area: 'some'
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')

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
  area: 'most'
  category: 'temple'
)
place.photos.attach(io: file, filename: 'place.jpeg')

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
  area: 'some'
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')



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
