class Organization < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :display_image, presence: true

  
  has_many :items, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :places, dependent: :destroy

  enum kind: { gallery: 1, museum: 2, library: 3}

  def latitude
    location.split(",")[0] || ''
  end

  def longitude
    location.split(",")[1] || ''
  end
end
