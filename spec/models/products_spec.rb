require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:barcode) }
  it { should validate_presence_of(:price) }
  it { should validate_numericality_of(:price).only_integer }
  it { should validate_presence_of(:sku) }
  it { should validate_uniqueness_of(:sku) }
end
