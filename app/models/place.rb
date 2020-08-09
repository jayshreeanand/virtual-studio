class Place < ApplicationRecord
  belongs_to :organization
  validates :title, presence: true
  validates :description, presence: true
  validates :content, presence: true
end
