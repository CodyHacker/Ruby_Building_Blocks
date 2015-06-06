def stock_picker(daily_closing_prices)

	pair_of_days = []

	buy_sell_pairs = daily_closing_prices.combination(2).to_a.delete_if { |pair| pair[0] >= pair[1] }

	buy_sell_spreads = buy_sell_pairs.collect { |pair| pair[1] - pair[0] }

	biggest_buy_sell_pair = buy_sell_pairs[buy_sell_spreads.find_index(buy_sell_spreads.max)]

	pair_of_days << daily_closing_prices.find_index(biggest_buy_sell_pair[0]) << daily_closing_prices.find_index(biggest_buy_sell_pair[1])
end

 p stock_picker([17,3,6,9,15,8,6,1,10])
