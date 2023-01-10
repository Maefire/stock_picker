require "pry-byebug"

def stock_picker(prices)
    lowest_price = prices[0] #starting point. lowest price is currently 17 as the base
    low_p_index  = 0
    current_sum  = 0

    prices.each_with_index do |element, index|
        if element < lowest_price
            lowest_price = element
            # p lowest_price # default numbers print = 3,1
            low_p_index = index ## might not need?
            # p low_p_index # default index print = 1,7 (matches to values)
            next
        end
    end
    
end
default_values = [17,3,6,9,15,8,6,1,10]
 stock_picker(default_values)
#  [1,4]  # for a profit of $15 - $3 == $12