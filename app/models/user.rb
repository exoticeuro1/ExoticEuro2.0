class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :display_email, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true
  validates :contact_email, presence: true

end
