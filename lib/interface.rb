require_relative 'store'
require_relative 'cart'


def start_checkout_process
  puts "Welcome to Amenitiz's Food Shop!"
  cart = Cart.new(Store.new)
  list_items = cart.list_items
  loop do
  # ask which product to buy
    puts "Please enter a product code to add to the cart or type 'total' to finish:
    | Product code | Name         | Price   |
    |--------------|--------------|---------|
    | GR1          | Green Tea    | € 3.11  |
    | SR1          | Strawberries | € 5.00  |
    | CF1          | Coffee       | € 11.23 |"
    input = gets.chomp.upcase
    break if input == 'TOTAL'

    if ['GR1', 'SR1', 'CF1'].include?(input)
      cart.add(input)
      puts "#{input} added to the cart."
      puts "Items in your cart:"
      cart.list_items
    else
    # otherwise show error
      puts "Invalid item, try again."
    end
  end
# Display the total
  puts "Total price: €#{cart.total}"
end

start_checkout_process
