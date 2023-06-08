def first(array, number)
    result_array = []

    counter = 0

    while counter < number
        if (array.size <= counter)
            break
        end

        result_array << array[counter]

        counter += 1
    end

    return result_array
end

original_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

puts "Вот какая палка колбасы у нас есть: "
puts original_array.to_s

puts "Сколько первых элементов вам отрезать?"
number = gets.to_i

puts "Вот ваша колбаса: "
puts first(original_array, number).to_s