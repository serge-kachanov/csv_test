class Product < ApplicationRecord
  validates :name, :barcode, :price, presence: true
  validates :sku, uniqueness: true, presence: true
  validates :price, numericality: { only_integer: true }

  scope :by_producer, ->(producer) { where("producer LIKE ?", producer)}
end
