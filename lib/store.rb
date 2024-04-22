class Store
  Product_prices = {
    'GR1' => 3.11,
    'SR1' => 5.00,
    'CF1' => 11.23
  }

  def apply(cart)
    total = 0
    cart.each do |product_code, quantity|
      total += calculate_price(product_code, quantity)
    end
    total
  end

  def calculate_price(product_code, quantity)
    case product_code
    when 'GR1'
      (quantity / 2 + quantity % 2) * Product_prices['GR1']
    when 'SR1'
      if quantity >= 3
        quantity * 4.50
      else
        quantity * Product_prices['SR1']
      end
    when 'CF1'
      if quantity >= 3
        quantity * (Product_prices['CF1'] * 2 / 3)
      else
        quantity * Product_prices['CF1']
      end
    else
      0
    end
  end
end

