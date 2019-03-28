class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :barcode, :price, :sku, :producer, :photo_url, :created_at, :updated_at
end
