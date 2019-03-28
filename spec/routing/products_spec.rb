require 'rails_helper'

describe 'products routes' do
  it 'routes /products to the products controller' do
    expect(get: '/products').to route_to(format: :json,
                                         controller: 'products',
                                         action: 'index')
  end
end
