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
)
place.photos.attach(io: file, filename: 'place.jpeg')
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
# 10.times do
#   puts "..."
#   file = File.open("app/assets/images/places/fushimiinari.jpeg")
#   place = Place.create!(
#     name: Faker::JapaneseMedia::OnePiece.location,
#     description: Faker::ChuckNorris.fact,
#     address: japan_places.sample,
#     toilet: Place.toilets.keys.sample,
#     # entrance: Place.entrances.keys.sample,
#     elevator: Place.elevators.keys.sample,
#     parking: Place.parkings.keys.sample,
#     charging: Place.chargings.keys.sample,
#     area: Place.areas.keys.sample
#   )
#   place.photos.attach(io: file, filename: 'place.jpeg')
#   # end
#   puts "...created #{Place.count} places."


# enum toilet: { no_data: 0, no: 1, has_one: 2, has_many: 3 }, _suffix: true
# enum entrance: { no_data: 0, one_step: 1, two_or_more_steps: 2, ramp: 3, flat: 4 }, _suffix: true
# enum elevator: { no_data: 0,  no: 1, has: 2, nonessential: 3 }, _suffix: true
# enum parking: { no_data: 0, no: 1, has: 2 }, _suffix: true
# enum charging: { no_data: 0, no: 1, has: 2 }, _suffix: true
# enum area: { no_data: 0, no: 1, some: 2, most: 3, all: 4 }, _suffix: true

# t.string "name"
# t.string "description"
# t.string "address"
# t.float "latitude"
# t.float "longitude"
# t.datetime "created_at", precision: 6, null: false
# t.datetime "updated_at", precision: 6, null: false
# t.integer "toilet"
# t.integer "entrance"
# t.integer "elevator"
# t.integer "parking"
# t.integer "charging"
# t.integer "area"
# t.string "city"
