class Event < ApplicationRecord
  belongs_to :organization
  validates :title, presence: true
  validates :description, presence: true
  validates :starts_at, presence: true
  validates :duration, presence: true
end
