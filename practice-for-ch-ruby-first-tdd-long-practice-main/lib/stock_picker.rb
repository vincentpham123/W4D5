def stock_picker(array)
    pair = [0,0]

    largest_diff = 0
    (0...array.length - 1).each do |i|
        if (array[i+1] - array[i]) > largest_diff
            largest_diff = array[i+1] - array[i]
            pair = [i, (i + 1)]
        end
    end
    pair
end