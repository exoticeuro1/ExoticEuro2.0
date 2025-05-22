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
    email: "exoticeuro@gmail.com",
    password: "password",
    display_email: "eurodealz@gmail.com",
    name: "Tohorie Lebron",
    bio: "I repair cars",
    phone: "1234567890",
    youtube: "https://www.youtube.com/user/torim",
    facebook: "https://www.facebook.com/torim",
    instagram: "https://www.instagram.com/torim",
    policy: "I am a car repair expert with over 10 years of experience. I have worked on various car models and brands, and I am passionate about helping people keep their cars in top condition. I am also a certified mechanic and have completed several training programs to stay updated with the latest technologies in the automotive industry."
)
puts "Admin user created"

@car = Car.create!(
    car_model: "Camry",
    description: "A reliable and fuel-efficient sedan.",
    price: 20000,
    miles: 30000,
    car_make: "Toyota",
    link: "https://www.toyota.com/camry/",
)

puts "Cars Created: #{Car.count}"

herobanner_image = Image.create!(
  name: "landing_car",
  url: "https://storage.googleapis.com/exoticeuro_fb_21_4_2025/car-landing.jpg",
)
puts "Hero Banner Image: #{Image.count}"  

no_image = Image.create!(
  name: "no_image",
  url: "https://storage.googleapis.com/exoticeuro_fb_21_4_2025/no_image.jpg",
)
puts "No Image Created"

location_image = Image.create!(
  name: "location_image",
  url: "https://storage.googleapis.com/exoticeuro_fb_21_4_2025/location.png",
)

  before_car_one = Image.create!(
  name: "before_car_one",
  url: "https://storage.googleapis.com/exoticeuro_fb_21_4_2025/car1_damaged.jpg",
)

before_car_two = Image.create!(
  name: "before_car_two",
  url: "https://storage.googleapis.com/exoticeuro_fb_21_4_2025/car2_damaged.jpg",
)

before_car_three = Image.create!(
  name: "before_car_three",
  url: "https://storage.googleapis.com/exoticeuro_fb_21_4_2025/car3_damaged.jpg",
)

before_car_four = Image.create!(
  name: "before_car_four",
  url: "https://storage.googleapis.com/exoticeuro_fb_21_4_2025/car4_damaged.jpg",
)

before_car_five = Image.create!(
  name: "before_car_five",
  url: "https://storage.googleapis.com/exoticeuro_fb_21_4_2025/car5_damaged.jpg",
)

after_car_one = Image.create!(
  name: "after_car_one",
  url: "https://storage.googleapis.com/exoticeuro_fb_21_4_2025/car1_fixed.jpg",
)
after_car_two = Image.create!(
  name: "after_car_two",
  url: "https://storage.googleapis.com/exoticeuro_fb_21_4_2025/car2_fixed.jpg",
)
after_car_three = Image.create!(
  name: "after_car_three",
  url: "https://storage.googleapis.com/exoticeuro_fb_21_4_2025/car3_fixed.jpg",
)
after_car_four = Image.create!(
  name: "after_car_four",
  url: "https://storage.googleapis.com/exoticeuro_fb_21_4_2025/car4_fixed.jpg",
)
after_car_five = Image.create!(
  name: "after_car_five",
  url: "https://storage.googleapis.com/exoticeuro_fb_21_4_2025/car5_fixed.jpg",
)
puts "Before and After Images Created: #{Image.where.not(id: 1).count}"
