# Daikanyama, Sensoji, Sword, skytree

puts "Creating reviews for landmarks..."
Dir[File.join(Rails.root, 'db', 'seeds', 'reviews', 'landmarks_seeds.rb')].each { |seed| load seed }
puts "...created #{Review.count} reviews in total."
puts
puts "Creating reviews for parks..."
Dir[File.join(Rails.root, 'db', 'seeds', 'reviews', 'parks_seeds.rb')].each { |seed| load seed }
puts "...created #{Review.count} reviews in total."
puts
puts "Creating reviews for restaurants..."
Dir[File.join(Rails.root, 'db', 'seeds', 'reviews', 'restaurants_seeds.rb')].each { |seed| load seed }
puts "...created #{Review.count} reviews in total."
puts
puts "Creating reviews for temples..."
Dir[File.join(Rails.root, 'db', 'seeds', 'reviews', 'temples_seeds.rb')].each { |seed| load seed }
puts "...created #{Review.count} reviews in total."
puts
