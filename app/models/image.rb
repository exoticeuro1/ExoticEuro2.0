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
end
