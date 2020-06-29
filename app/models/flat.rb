class Flat < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  belongs_to :user
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :address, presence: true
  validates :description, presence: true
  validates :photos, presence: true
  validates :price_per_night, presence: true
  validates :number_of_guest, presence: true
  validates :number_of_bedroom, presence: true
  validates :number_of_bathroom, presence: true

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
