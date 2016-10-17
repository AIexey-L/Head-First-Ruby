def my_method
  yield("Jhon", 23)
end

my_method do |name, age|
  puts "#{name} #{age}"
end