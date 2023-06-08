basket = []
basket << "apple"

basket.push("melon")
basket.push("cherry", "mango")

basket.delete("melon")

basket.delete_at(0)

puts basket.to_s
