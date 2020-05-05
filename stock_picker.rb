def stock_picker (stock_prices)
  max_profit = 0
  hash = Hash.new
  stock_prices.each_with_index{|first_price, index|
    stock_prices.each_with_index{|second_price, second_index|
      if second_index > index && (second_price - first_price) > max_profit
        max_profit = second_price - first_price
        hash["buy_index"] = index
        hash["sell_index"] = second_index
      end
    } 
}
puts hash.to_s + " For a max profit of £#{max_profit}"
end
stock_picker([17,3,6,9,15,8,6,1,10])