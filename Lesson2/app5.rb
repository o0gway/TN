# Порядковый номер даты
# Создаём массив месяцев, чтобы можно было сразу получить кол-во дней в месяце
months = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]

puts "*" *80
# Получаем от пользователя его данные
puts "\tПрограмма подсчета порядкового номера даты"
puts "*" *80

print "Пожалуйста введите день: "
day = gets.to_i

print "Пожалуйста введите месяц(цифрой): "
month = gets.to_i - 1

print "Пожалуйста введите год: "
year = gets.to_i

sum_months = 0 # Переменная для суммы всех дней, которые будут суммироваться в зависимости от выбора порядкового месяца пользователя

# Задаем февралю месяцу кол-во дней в зависимости от того год високосный или нет
months[1] += 1 if year % 4 == 0 && year % 100 != 0 || year % 400 == 0

# Суммируем дни 
# while month != 0
#   sum_months += months[month]
#   month -= 1
# end
###################################
#New code
sum_months = months.take(month).sum


# Вычисляем наш порядковый номер даты
#index_day = day + sum_months
index_day = day + sum_months
puts "*" *80
puts "Порядковый номер даты: #{index_day}"
