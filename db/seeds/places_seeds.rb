puts "Creating landmarks..."
Dir[File.join(Rails.root, 'db', 'seeds', 'places', 'landmarks_seeds.rb')].each { |seed| load seed }
landmarks = Place.count
puts "...created #{landmarks} places in total."
puts
before = Place.count
puts "Creating parks..."
Dir[File.join(Rails.root, 'db', 'seeds', 'places', 'parks_seeds.rb')].each { |seed| load seed }
parks = Place.count - before
puts "...created #{parks} places in total."
puts
puts "Creating restaurants..."
before = Place.count
Dir[File.join(Rails.root, 'db', 'seeds', 'places', 'restaurants_seeds.rb')].each { |seed| load seed }
restaurants = Place.count - before
puts "...created #{restaurants} places in total."
puts
puts "Creating temples..."
before = Place.count
Dir[File.join(Rails.root, 'db', 'seeds', 'places', 'temples_seeds.rb')].each { |seed| load seed }
temples = Place.count - before
puts "...created #{temples} places in total."
puts
puts "Creating gardens..."
before = Place.count
Dir[File.join(Rails.root, 'db', 'seeds', 'places', 'gardens_seeds.rb')].each { |seed| load seed }
gardens = Place.count - before
puts "...created #{gardens} places in total."
puts
puts "Creating museums..."
before = Place.count
Dir[File.join(Rails.root, 'db', 'seeds', 'places', 'museums_seeds.rb')].each { |seed| load seed }
museums = Place.count - before
puts "...created #{museums} places in total."
puts
puts "Creating entertainments..."
before = Place.count
Dir[File.join(Rails.root, 'db', 'seeds', 'places', 'entertainments_seeds.rb')].each { |seed| load seed }
entertainments = Place.count - before
puts "...created #{entertainments} places in total."
puts
puts "Creating towns..."
before = Place.count
Dir[File.join(Rails.root, 'db', 'seeds', 'places', 'towns_seeds.rb')].each { |seed| load seed }
towns = Place.count - before
puts "...created #{towns} places in total."
puts

puts "#{landmarks} landmarks"
puts "#{parks} parks"
puts "#{restaurants} restaurants"
puts "#{temples} temples"
puts "#{gardens} gardens"
puts "#{museums} museums"
puts "#{entertainments} entertainments"
puts "#{towns} towns"
# enum toilet: { no_data: 0, no: 1, has_one: 2, has_many: 3 }, _suffix: true
# enum elevator: { no_data: 0,  no: 1, has: 2, nonessential: 3 }, _suffix: true
# enum parking: { no_data: 0, no: 1, has: 2 }, _suffix: true
# enum area: { no_data: 0, not: 1, partly: 2, mostly: 3, fully: 4 }, _suffix: true

# CATEGORY = ['temple', 'park', 'restaurant', 'landmark', 'hotel']

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
