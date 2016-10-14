#salary v.2 with def initialize и .self

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

  def initialize (name, salary)
    self.name = name # вызывается метод записи name= c проверкой для объекта, который был создан Employee.new (name, salary)
    self.salary = salary # вызывается метод записи salary= c проверкой для объекта, который был создан Employee.new (name, salary)
  end
  def print_pay_stub
    puts "Name #{name}" # обращение к аттрибуту метода чтения, а не к переменной экземпляра @name (можно записать self.name)
    pay_for_period = (salary / 365) * 14 # обращение к аттрибуту метода чтения, а не к переменной экземпляра @salary (можно записать self.salary)
    formated_pay = format("%.2f", pay_for_period) # %.2f - округление до двух знаков после запятой f - float s - string
    # i - integer если %7.4f - 7-ширина целой части, добавляет пробелы, если короче
    # можно подряд: puts format("%12s | %2i", "Paper Clips", 5 )- две форматных последовательности, два аргумента)
    puts "Pay This Period: $#{formated_pay}"
  end
end