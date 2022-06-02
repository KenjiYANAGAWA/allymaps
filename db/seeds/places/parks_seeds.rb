### Parks

puts "..."
file = File.open("app/assets/images/places/parks/budokan.webp")
place = Place.create!(
  name: 'Nippon Budokan & Kitanomaru Park',
  description: "Live at the Budokan! While the Budokan is famous abroad for hosting acts like the Beatles, Cheap Trick, and Bob Dylan, it was originaly built to house the judo events for the 1964 Summer Olympics and is officially called the Nippon Budokan (“Japan Martial Arts Hall”). Though many opposed the Beatles defiling a martial arts arena with western pop music, the site is now frequently used for musical events and pro wrestling. Though there are larger arenas in Japan, playing at the Budokan is seen as the ultimate proof a Japanese group has made it big. In fact, the day we investigated we couldn’t get inside due to a concert!",
  toilet: 'has_many',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  # address: '2-1 Yoyogikamizonocho, Shibuya, Tokyo, 151-0052, Japan',
  address: 'Nippon Budokan & Kitanomaru Park',
  city: 'Chiyoda',
  category: 'park'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/parks/uenopark.webp")
place = Place.create!(
  name: 'Ueno Park',
  description: "Ueno Park is a public park in the Ueno district of Tokyo.  The park is famous for its many museums and art galleries, as well as for being a very popular location for cherry blossom viewing in the spring.  The atmosphere is very upbeat and lively with many street performers, festivals and people enjoying nature. While some parts of the park are not wheelchair accessible, it is still a great place to visit if you have a disability.",
  toilet: 'has_many',
  elevator: 'no_data',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  # address: '2-1 Yoyogikamizonocho, Shibuya, Tokyo, 151-0052, Japan',
  address: '上野公園',
  city: 'Taito',
  category: 'park'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/parks/kasairinkai.webp")
place = Place.create!(
  name: 'Kasai Rinkai Park',
  description: "Kasai Rinkai Park is the second largest park in Tokyo and will be one of the venues for the Tokyo 2020 Olympics and Paralympics. It is a great, accessible option for enjoying nature within Tokyo.",
  toilet: 'has_many',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  # address: '2-1 Yoyogikamizonocho, Shibuya, Tokyo, 151-0052, Japan',
  address: 'Kasai Rinkai Park',
  city: 'Edogawa',
  category: 'park'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/parks/yoyogi_park.jpeg")
place = Place.create!(
  name: 'Yoyogi Park',
  description: "Yoyogi Park is a park in Yoyogikamizonocho, Shibuya, Tokyo, Japan, located adjacent to Harajuku Station and Meiji Shrine. The park is a popular Tokyo destination.",
  toilet: 'has_many',
  elevator: 'nonessential',
  parking: 'has',
  charging: 'no_data',
  area: 'mostly',
  # address: '2-1 Yoyogikamizonocho, Shibuya, Tokyo, 151-0052, Japan',
  address: 'Yoyogi Park',
  city: 'Shibuya',
  category: 'park'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

# puts "..."
# file = File.open("app/assets/images/places/parks/mother_bokujo.jpeg")
# place = Place.create!(
#   name: 'Mother Farm',
#   description: "Mother Farm is accessible via public transportation from Tokyo Station. Although it is a bit far from Tokyo, it is certainly fun enough to make the visit worthwhile! This wide-open farm on top of a mountain is not only exciting for kids, but adults as well. Mother Farm is a massive place at an overwhelming 2.5 million square meters! The vast meadowland is big enough to contain 350 football stadiums and is home to a variety of animals. This is truly a hilltop animal paradise.",
#   toilet: 'has_many',
#   elevator: 'nonessential',
#   parking: 'has',
#   charging: 'no_data',
#   area: 'mostly',
#   # address: '940-3 Tagura, Futtsu, Chiba, 299-1731, Japan',
#   address: 'Mother Farm',
#   city: 'Futtsu Chiba',
#   category: 'park'
# )
# place.photos.attach(io: file, filename: 'place.jpeg')
# puts "#{place.name} created"
