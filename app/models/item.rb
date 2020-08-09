class Item < ApplicationRecord
  belongs_to :organization

  validates :name, presence: true
  validates :description, presence: true
  validates :content, presence: true
end
