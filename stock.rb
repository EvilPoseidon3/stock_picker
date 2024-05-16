
def largest_hash(hash)
  hash_value_array = Array.new
  hash.each_value {|value| hash_value_array.push(value) }
  hash_value_array.sort!.reverse
  largest_number = hash_value_array[0]
  return hash.key(largest_number) + " gave a profit of $#{-(largest_number)}"
end



def stock_picker(array)
  array_index_length = array.length - 2
  profit_per_day_range_hash = Hash.new
  for i in 0..array_index_length
    index_set_comparing_day = i + 1
    loop do
      profit_between_days = (array[i]) - (array[index_set_comparing_day])
      profit_per_day_range_hash["Buying day #{i+1} & selling day #{index_set_comparing_day + 1}"] = profit_between_days
      break if index_set_comparing_day >= array_index_length
      index_set_comparing_day += 1
    end
    index_set_comparing_day = i + 1
  end
  puts largest_hash(profit_per_day_range_hash)

end

stock_picker([17,3,6,9,15,8,6,1,10])