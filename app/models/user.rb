class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  has_many :flats
  has_many :bookings
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
end
