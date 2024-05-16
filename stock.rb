


def stock_picker(array)
  array_index_length = array.length - 1
  profit_per_day_range_hash = Hash.new
  for i in 0..array_index_length
    index_set_comparing_day = i + 1
    loop do
      profit_between_days = -(array[i]) + array[index_set_comparing_day]
      profit_per_day_range_hash["Buying day #{i+1} & selling day #{index_set_comparing_day + 1}"] = profit_between_days
      break if index_set_comparing_day == array_index_length
      index_set_comparing_day += 1
    end
    index_set_comparing_day = i + 1
  end

  
end