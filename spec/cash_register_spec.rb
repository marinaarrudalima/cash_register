require_relative '../lib/cart'
require_relative '../lib/store'

describe Cart do
  before(:each) do
    @store = Store.new
    @cart = Cart.new(@store)
  end

  it 'calculates the total for two green teas with buy-one-get-one-free offer' do
    2.times { @cart.add('GR1') }
    expect(@cart.total).to eq("3.11")
  end

  it 'calculates the total for three strawberries and one green tea, applying bulk discounts' do
    ['SR1', 'SR1', 'GR1', 'SR1'].each { |product| @cart.add(product) }
    expect(@cart.total).to eq("16.61")
  end

  it 'calculates the total for mixed products with three coffees' do
    ['GR1', 'CF1', 'SR1', 'CF1', 'CF1'].each { |product| @cart.add(product) }
    expect(@cart.total).to eq("30.57")
  end
end
