class ProductsSaver
  attr_reader :product_attributes

  def initialize(product_attributes)
    @product_attributes = product_attributes
  end

  def save
    product_attributes.each do |attributes|
      product = Product.find_or_initialize_by(sku: attributes[:sku])
      product.assign_attributes(attributes)
      product.save! if product.changed_attributes.keys.any?
    end
  end
end
