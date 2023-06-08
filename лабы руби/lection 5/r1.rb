fruit1 = "apple"
fruit2 = "banana"
fruit3 = "orange"
fruits = ["apple", "banana", "orange"]
puts fruits.class.name
puts fruits[0]
puts fruits[1]
puts fruit1 + "," + fruit2 + "," + fruit3
puts fruits.to_s
basket = []
basket << "apple"
basket.push("melon")
basket.push("cherry", "mango")
puts basket.to_s
basket.delete("melon")
puts basket.to_s
basket.delete_at(0)
puts basket.to_s