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
    email: "tori@gmail.com",
    password: "password",
    name: "Tori",
    bio: "I repair cars",
    phone: "1234567890",
    location: "New York",
    youtube: "https://www.youtube.com/user/torim",
    facebook: "https://www.facebook.com/torim",
    instagram: "https://www.instagram.com/torim",
    plicy: "I am a car repair expert with over 10 years of experience. I have worked on various car models and brands, and I am passionate about helping people keep their cars in top condition. I am also a certified mechanic and have completed several training programs to stay updated with the latest technologies in the automotive industry."
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