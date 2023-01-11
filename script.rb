require "pry-byebug"

def stock_picker(prices)
    lowest_price            = prices[0] #starting point. lowest price is index[0] as the base
    low_p_index             = ""
    current_sum             = 0
    index_with_greatest_sum = []
    lowest_final            = 0 #variables for print-out
    highest_final           = 0 #variables for print-out

    prices.each_with_index do |element, index|
        if element < lowest_price
            lowest_price = element
            low_p_index = index
            next
        end
        if element - lowest_price > current_sum
            current_sum = element - lowest_price
            lowest_final = lowest_price
            highest_final = element
            index_with_greatest_sum = [low_p_index, index]
        end
    end
    print ("profit of $#{current_sum} at positions #{index_with_greatest_sum},")
    print (" where you must buy at $#{lowest_final} and sell at $#{highest_final}\n")
end
default_values = [17,3,6,9,15,8,6,1,10]
stock_picker(default_values)
#  [1,4]  # for a profit of $15 - $3 == $12