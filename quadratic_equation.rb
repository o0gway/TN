print "Пожалуйста введите a: "
a = gets.chomp.to_i

print "Пожалуйста введите b: "
b = gets.chomp.to_i

print "Пожалуйста введите c: "
c = gets.chomp.to_i
 
d = b ** 2 - (4 * a * c)


if d < 0
  puts "Корней нет"
elsif d == 0
  x1 = (-b + Math.sqrt(d)) / (2 * a)
  puts "Дискриминант равен #{d}, корни равны и их значение #{x1}"
elsif d > 0
  x1 = (-b + Math.sqrt(d)) / (2 * a)
  x2 = (-b - Math.sqrt(d)) / (2 * a)
  puts "Дискриминант равен #{d}, первый корень равен #{x1}, второй корень равен #{x2}"
end