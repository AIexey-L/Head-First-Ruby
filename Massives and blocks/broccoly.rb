def make_casserole
  puts "Preheat oven to 375 degrees"
  ingredients = yield
  puts "Place #{ingredients} in dish"
  puts "Bake for 20 min"
end


make_casserole do
  "noodles, celery, and tuna"
end
make_casserole do
  "rice, broccoli and chiken"
end

make_casserole



# 9 и 12 строки - это тоже вызов метода
#
# [7:27]
# представь, что блок передаётся, как параметр, в метод (edited)
#
# [7:27]
# и внутри метода доступен через yield



# Output:

# Preheat oven to 375 degrees
# Place noodles, celery, and tuna in dish
# Bake for 20 min
# Preheat oven to 375 degrees
# Place rice, broccoli and chiken in dish
# Bake for 20 min
# Preheat oven to 375 degrees
# broccoly.rb:3:in `make_casserole': no block given (yield) (LocalJumpError)
# from broccoly.rb:16:in `<main>'#