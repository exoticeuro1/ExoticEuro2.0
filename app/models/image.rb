# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  name       :string
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  car_id     :integer          not null
#
# Indexes
#
#  index_images_on_car_id  (car_id)
#

class Image < ApplicationRecord
    belongs_to(
        :car,
        class_name: "Car",
        foreign_key: "car_id",
        inverse_of: :images,
        optional: true
    )
    
    validates :name, presence: true
    validates :url, presence: true
end
