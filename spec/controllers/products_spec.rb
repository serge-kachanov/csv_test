require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe '#index' do
    subject { get :index }

    context 'return 200' do
      it { is_expected.to be_successful }
    end

    context 'with search' do
      let!(:products_google) { create_list(:product, 10, producer: 'Google') }
      let!(:products_facebook) { create_list(:product, 20, producer: 'Facebook') }

      before { get :index, format: :json, params: { producer: 'Google' } }

      it do
        expect(response.status).to eq 200
        expect(JSON.parse(response.body).count).to eq 10
      end
    end

    context 'with case insensitive search' do
      let!(:products_google) { create_list(:product, 10, producer: 'Google') }
      let!(:products_facebook) { create_list(:product, 20, producer: 'Facebook') }

      before { get :index, format: :json, params: { producer: 'google' } }

      it do
        expect(response.status).to eq 200
        expect(JSON.parse(response.body).count).to eq 10
      end
    end
  end
end
