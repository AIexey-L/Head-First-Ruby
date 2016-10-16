def total(prices)
  amount = 0
  prices.each do |price|
    amount += price
  end
  # equivalent to prices.each { |price| amount += price }
  amount #equivalent to return amount
end

def refund(prices)
  amount = 0
  prices.each do |price|
    amount -= price
  end
  # equivalent to prices.each { |price| amount -= price }
  amount
end

def shoe_discount(prices)
  prices.each do |price|
    amount_off = price / 3.0 #discount
    puts format("Your discount: $%.2f", amount_off)
  end
end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", total(prices))
puts format("%.2f", refund(prices))
shoe_discount(prices)

