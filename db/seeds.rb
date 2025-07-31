# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


@admin = User.create!(
  email:  ENV["USER_EMAIL"],
  password: ENV["USER_PASSWORD"],
  
  display_email: "discdealz901@gmail.com",
  contact_email: "exoticeuro1@gmail.com",
  
  phone: "(901)-724-3434",
  
  location: nil,
  location_link: nil,
  
  youtube: nil,
  facebook: nil,
  instagram: nil,

  about: <<~HTML.chomp,
    <p> Our founder started repairing cars in 1998 for family and friends, quickly developing a cost-effective way to source quality parts. With an electrical engineering background, he mastered complex systems in both American and foreign vehicles. After years of hands-on experience, he co-founded a dealership in 2020 and launched Exotic Euro in 2025 to bring his passion for high-end car restoration to the next level. </p>             
    HTML
)

puts "Admin user created"

herobanner_image = Image.create!(
  name: "landing_car",
  url: "https://storage.googleapis.com/exoticeuro2025-tohoriehomes/car-landing.jpg",
  )
puts "Hero Banner Image Created"  

no_image = Image.create!(
  name: "no_image",
  url: "https://storage.googleapis.com/exoticeuro2025-tohoriehomes/no_image.jpg",
)
puts "No Image Created"

location_image = Image.create!(
  name: "location_image",
  url: "https://storage.googleapis.com/exoticeuro2025-tohoriehomes/location.png",
)
puts "Location Image Created"

before_car_one = Image.create!(
  name: "before_car_one",
  url: "https://storage.googleapis.com/exoticeuro2025-tohoriehomes/car1-damaged.jpg",
)

before_car_two = Image.create!(
  name: "before_car_two",
  url: "https://storage.googleapis.com/exoticeuro2025-tohoriehomes/car2-damaged.jpg",
)

before_car_three = Image.create!(
  name: "before_car_three",
  url: "https://storage.googleapis.com/exoticeuro2025-tohoriehomes/car3-damaged.jpg",
)

before_car_four = Image.create!(
  name: "before_car_four",
  url: "https://storage.googleapis.com/exoticeuro2025-tohoriehomes/car4-damaged.jpg",
)

before_car_five = Image.create!(
  name: "before_car_five",
  url: "https://storage.googleapis.com/exoticeuro2025-tohoriehomes/car5-damaged.jpg",
)
puts "Before Images Created"

after_car_one = Image.create!(
  name: "after_car_one",
  url: "https://storage.googleapis.com/exoticeuro2025-tohoriehomes/car1-fixed.jpg",
)
after_car_two = Image.create!(
  name: "after_car_two",
  url: "https://storage.googleapis.com/exoticeuro2025-tohoriehomes/car2-fixed.jpg",
)
after_car_three = Image.create!(
  name: "after_car_three",
  url: "https://storage.googleapis.com/exoticeuro2025-tohoriehomes/car3-fixed.jpg",
)
after_car_four = Image.create!(
  name: "after_car_four",
  url: "https://storage.googleapis.com/exoticeuro2025-tohoriehomes/car4-fixed.jpg",
)
after_car_five = Image.create!(
  name: "after_car_five",
  url: "https://storage.googleapis.com/exoticeuro2025-tohoriehomes/car5-fixed.jpg",
)
puts "After Images Created"
