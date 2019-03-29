require 'rails_helper'

RSpec.describe ImportProductsService do
  TEST_FILE_PATH = Rails.root.join('spec', 'mock_data', 'MOCK_DATA.csv').freeze

  context '#perform' do
    it 'should create import products' do
      expect { ImportProductsService.new(TEST_FILE_PATH).perform }.to change { Product.count }.by(10)
    end
  end
end
