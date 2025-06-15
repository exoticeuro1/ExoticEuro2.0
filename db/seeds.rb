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
    bio: <<~HTML.chomp,
    <p>We’re a small, independent shop that buys repair-worthy luxury cars, restores them in-house, and sells them at a fixed price.</p>

    <p>Founded in 2019 by three longtime technicians, we focus on mechanical integrity and transparent costs.</p>

    <p>Every car gets a full inspection, an itemized repair plan, and a documented parts list that you review before committing.</p>

    <p>Because we own each vehicle during the rebuild and do the work under one roof, there are no broker fees or surprise mark-ups.</p>

    <p>The result: a luxury car that drives the way it should, priced only for the work that went into it—nothing more, nothing less.</p>
  HTML
    phone: "(901)-321-1234",
    youtube: nil,
    facebook: nil,
    instagram: nil,
   policy: <<~HTML.chomp,
    <p><strong>Scope&nbsp;of&nbsp;Service.</strong> We purchase, restore, and resell used luxury vehicles. Our responsibility ends once the completed vehicle is delivered and signed for by the customer.</p>

    <p><strong>Estimates &amp; Pricing.</strong> All written estimates include parts, labor, and taxes. The quoted total will not change unless the customer approves a revised work order in writing.</p>

    <p><strong>Payment Terms.</strong> A 50&nbsp;% non-refundable deposit starts the project; the balance is due on delivery. We accept major credit cards, cashier’s checks, or ACH transfers.</p>

    <p><strong>Warranty.</strong> Completed vehicles carry a 12-month / 12,000-mile limited warranty on parts and labor performed by our shop. Normal wear items and customer-supplied components are excluded.</p>

    <p><strong>Customer Responsibilities.</strong> The customer must secure insurance before taking possession and must follow the manufacturer’s maintenance schedule. Failure to do so voids the warranty.</p>

    <p><strong>Limitation of Liability.</strong> Our maximum liability is limited to the amount paid for the work described in the signed estimate. We are not liable for indirect, incidental, or consequential damages.</p>

    <p><strong>Governing Law.</strong> This agreement is governed by the laws of the State of Tennessee. Any disputes will be resolved in the courts of Shelby County.</p>
  HTML
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
