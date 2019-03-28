class ProductRowAdapter
  attr_reader :row

  def initialize(row)
    @row = row
  end

  def perform
    product_attributes
  end

  private

  def product_attributes
    {
      name:       row['product_name'],
      sku:        row['sku (unique id)'],
      barcode:    row['barcode'],
      price:      row['price_cents'],
      producer:   row['producer'],
      photo_url:  row['photo_url']
    }
  end
end
