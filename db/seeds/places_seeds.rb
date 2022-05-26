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
puts "..."
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















# toilet: { no_data: 0, no: 1, has_one: 2, has_many: 3 }, _suffix: true
# entrance: { no_data: 0, one_step: 1, two_or_more_steps: 2, ramp: 3, flat: 4 }, _suffix: true elevator: { no_data: 0,  no: 1, has: 2, nonessential: 3 }, _suffix: true parking: { no_data: 0, no: 1, has: 2 }, _suffix: true
# charging: { no_data: 0, no: 1, has: 2 }, _suffix: true
# area: { no_data: 0, no: 1, some: 2, most: 3, all: 4 }, _suffix: true
