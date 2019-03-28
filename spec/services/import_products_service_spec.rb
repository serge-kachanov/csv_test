require 'rails_helper'

RSpec.describe ImportProductsService do
  FILE_PATH = Rails.root.join('spec', 'csv_storage', 'MOCK_DATA.csv').freeze

  context '#perform' do
    it 'should create import products' do
      expect { ImportProductsService.new(FILE_PATH).perform }.to change { Product.count }.by(10)
    end
  end
end
