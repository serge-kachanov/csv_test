class Product < ApplicationRecord
  validates :name, :barcode, :price, presence: true
  validates :sku, uniqueness: true, presence: true
  validates_numericality_of :price, only_integer: true

  scope :by_producer, ->(name) { where(producer: name)}
end
