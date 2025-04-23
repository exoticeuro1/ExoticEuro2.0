# == Schema Information
#
# Table name: cars
#
#  id          :integer          not null, primary key
#  car_model   :string
#  price       :decimal(, )
#  miles       :integer
#  car_make    :string
#  description :text
#  link        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Car < ApplicationRecord
    has_many(
        :images,
        class_name: "Image",
        foreign_key: "car_id",
        inverse_of: :car,
        dependent: :destroy
    )
end
