class Cart
  attr_reader :items


  def initialize(pricing_rules)
    @items = {}
    @pricing_rules = pricing_rules
  end

  def add(product_code)
    if @items.has_key?(product_code)
      @items[product_code] += 1
    else
      @items[product_code] = 1
    end
  end

  def list_items
    @items.each do |item, quantity|
      puts "#{item}: #{quantity}x"
    end
  end

  def total
    total_price = 0
    @items.each do |product_code, quantity|
      total_price += @pricing_rules.calculate_price(product_code, quantity)
    end
    format('%.2f', total_price) # The %.2f specifies that the number should be formatted with 2 digits
  end
end
