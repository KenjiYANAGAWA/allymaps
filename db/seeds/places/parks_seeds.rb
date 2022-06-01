### Parks

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

puts "..."
file = File.open("app/assets/images/places/parks/mother_bokujo.jpeg")
place = Place.create!(
  name: 'Mother Farm',
  description: "Mother Farm is accessible via public transportation from Tokyo Station. Although it is a bit far from Tokyo, it is certainly fun enough to make the visit worthwhile! This wide-open farm on top of a mountain is not only exciting for kids, but adults as well. Mother Farm is a massive place at an overwhelming 2.5 million square meters! The vast meadowland is big enough to contain 350 football stadiums and is home to a variety of animals. This is truly a hilltop animal paradise.",
  toilet: 'has_many',
  elevator: 'nonessential',
  parking: 'has',
  charging: 'no_data',
  area: 'mostly',
  # address: '940-3 Tagura, Futtsu, Chiba, 299-1731, Japan',
  address: 'Mother Farm',
  city: 'Futtsu Chiba',
  category: 'park'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"
