# frozen_string_literal: true

# Model Product
class Product < ApplicationRecord
  has_many :line_items, dependent: :destroy

  validates :title, :description, :price, :image_url, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :image_url, allow_blank: true, format: {
    with: /\.(gif|jpg|png)\z/i,
    message: 'must be a URL for GIF, JPG or PNG image'
  }
end
