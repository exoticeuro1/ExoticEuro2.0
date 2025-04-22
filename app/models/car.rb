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
end
