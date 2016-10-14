class Employee
  attr_reader :name, :salary #метод чтения
  def name=(name) #метод записи name и проверка
    if name == ""
      rise "Name couldn't be blank!"
    end
    @name = name
  end
  def salary=(salary) #метод записи salary и проверка
    if salary < 0
      rise "Asalary of #{salary} isn't valid"
    end
    @salary = salary
  end
  def print_pay_stub
    puts "Name #{@name}"
    pay_for_period = (@salary / 365) * 14
    formated_pay = format("%.2f", pay_for_period) # %.2f - округление до двух знаков после запятой f - float s - string
    # i - integer если %7.4f - 7-ширина целой части, добавляет пробелы, если короче
    # можно подряд: puts format("%12s | %2i", "Paper Clips", 5 )- две форматных последовательности, два аргумента)
    puts "Pay This Period: $#{formated_pay}"
  end
end

