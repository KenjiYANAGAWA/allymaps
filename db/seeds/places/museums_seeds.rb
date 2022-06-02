# NEZU MUSEUM
puts "..."
file = File.open("app/assets/images/places/museums/nezu.jpeg")
place = Place.create!(
  name: 'Nezu Museum',
  description: "The Nezu Museum is a stylish and wheelchair accessible museum where visitors can enjoy a peaceful break from the city. There is also a large traditional Japanese garden behind the museum that contains many ancient statues and monuments. Along the wandering paths users can find a pond, waterfall and tea houses as well as the Nezu Cafe.",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Nezu Museum',
  city: 'Minato',
  toilet: 'has_many',
  elevator: 'has',
  parking: 'has',
  charging: 'no_data',
  area: 'mostly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/museums/edotokyo.webp")
place = Place.create!(
  name: 'Edo-Tokyo Museum',
  description: "Though settlements have existed in the Tokyo area since 3000 BCE, things really started in the 12th century CE when Edo Shigenaga, the military governor of a large Kanto province, erected his castle in present day Tokyo, calling it Edojuku.  Celebrating Tokyo’s long past, the Edo-Tokyo Museum is an excellent museum that is fantastically wheelchair accessible.  Check out our accessibility report below!",
  # address: 'Minami Aoyama 6-5-1, Minato, Tokyo, 107-0062, Japan',
  address: 'Edo-Tokyo Museum',
  city: 'Sumida',
  toilet: 'has_many',
  elevator: 'has',
  parking: 'no',
  charging: 'no_data',
  area: 'mostly',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/museums/kokuritsu_kagaku_hakubutsukan.jpeg")
place = Place.create!(
  name: 'National Museum of Nature and Science',
  description: "The National Museum of Nature and Science (国立科学博物館, Kokuritsu Kagaku Hakubutsukan) is in the northeast corner of Ueno Park in Tokyo. The museum has exhibitions on pre-Meiji science in Japan. A life-size blue whale model and a steam locomotive are on display outside.",
  toilet: 'has_many',
  elevator: 'has',
  parking: 'has',
  charging: 'no_data',
  area: 'fully',
  # address: '7-20 Uenokoen, Taito City, Tokyo, 110-8718, Japan',
  address: 'National Museum of Nature and Science',
  city: 'Taito',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"


puts "..."
file = File.open("app/assets/images/places/museums/tokorozawa_koku_kinenkan.jpeg")
place = Place.create!(
  name: 'Tokorozawa Aviation Museum',
  description: "The Tokorozawa Aviation Museum (所沢航空発祥記念館, Tokorozawa Kōkū Hasshō Kinenkan) is a museum located in the city of Tokorozawa, Saitama dedicated to the history of aviation in Japan. It contains aircraft and other displays (many of which are interactive) and an IMAX theatre. Located on the site of Japan's first airfield which started operations in 1911 with a flight by Yoshitoshi Tokugawa, the original single runway is still visible and has been incorporated into a larger multifunction park adjacent to the museum. It is located in the Tokorozawa Aviation Memorial Park.",
  toilet: 'has_many',
  elevator: 'no_data',
  parking: 'has',
  charging: 'no_data',
  area: 'mostly',
  # address: '1-13 Namiki, Tokorozawa-shi, Saitama, 359-0042, Japan',
  address: 'Tokorozawa Aviation Museum',
  city: 'Saitama',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"


puts "..."
file = File.open("app/assets/images/places/museums/japanese-sword-museum.webp")
place = Place.create!(
  name: 'Japanese Sword Museum',
  description: "The Japanese Sword Museum is fully accessible and located near a number of other museums that are sure to please history buffs. The museum building is new and very flat. Wheelchair parking is available at the front of the museum.  Tactile paving leads from the entrance to the ticket gate, but after that there are only tactile blocks indicating stairs.",
  toilet: 'has_many',
  elevator: 'has',
  parking: 'has',
  charging: 'no_data',
  area: 'mostly',
  # address: '1-12-9, Yokoami, Sumida, Tokyo, 130-0015, Japan',
  address: 'Japanese Sword Museum',
  city: 'Sumida',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/museums/samu.webp")
place = Place.create!(
  name: 'Samurai Museum',
  description: "The Samurai Museum is a small but popular museum located in Shinjuku’s Kabukicho area. The museum offers a glimpse into the armor and weaponry used by the samurai through tours aimed at foreign visitors. Unfortunately, it is not very wheelchair accessible.",
  toilet: 'no',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'partly',
  # address: '1-12-9, Yokoami, Sumida, Tokyo, 130-0015, Japan',
  address: 'Samurai Museum',
  city: 'Sumida',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/museums/nac.webp")
place = Place.create!(
  name: 'The National Art Center, Tokyo',
  description: "The National Art Center (Kokuritsu Shin-Bijutsukan), Tokyo is an art museum located in the upscale Roppongi district. Opening on January 21, 2007, it is a unique and innovative art exhibition facility: instead of maintaining a permanent collection, it makes the most of its 14,000 square meters of exhibition space – one of the largest in Japan – and focuses on acting as a venue for various art exhibitions.",
  toilet: 'has_many',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'fully',
  # address: '1-12-9, Yokoami, Sumida, Tokyo, 130-0015, Japan',
  address: 'The National Art Center, Tokyo',
  city: 'Minato',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/museums/tnm.webp")
place = Place.create!(
  name: 'Tokyo National Museum',
  description: "The Tokyo National Museum is not only Japan’s largest museum, it is also incredibly wheelchair accessible. With over 110,000 items on display it is a great place to learn about the history of Japan.",
  toilet: 'has_many',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'fully',
  # address: '1-12-9, Yokoami, Sumida, Tokyo, 130-0015, Japan',
  address: 'Tokyo National Museum',
  city: 'Taito',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"

puts "..."
file = File.open("app/assets/images/places/museums/tnm.webp")
place = Place.create!(
  name: 'The Ghibli Museum',
  description: "The Ghibli Museum is a must-see for fans of Japan’s most famous animation studio, Studio Ghibli. Exhibits on the animation process, famous productions, and a small theater are all contained within the quaint museum which is mostly wheelchair accessible.",
  toilet: 'has_many',
  elevator: 'has',
  parking: 'no_data',
  charging: 'no_data',
  area: 'mostly',
  # address: '1-12-9, Yokoami, Sumida, Tokyo, 130-0015, Japan',
  address: '三鷹の森ジブリ美術館',
  city: 'Mitaka',
  category: 'landmark'
)
place.photos.attach(io: file, filename: 'place.jpeg')
puts "#{place.name} created"
