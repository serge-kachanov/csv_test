require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe '#index' do
    subject { get :index }

    context 'return 200' do
      it { is_expected.to be_successful }
    end
  end
end
