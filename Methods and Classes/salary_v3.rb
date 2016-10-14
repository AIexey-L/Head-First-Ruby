#salary v3 with subclasses SalariedEmployee, HourlyEmployee and superclass Employee

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
      rise "A salary of #{salary} isn't valid"
    end
    @salary = salary
  end

  def print_name
    puts "Name #{name}"
  end

  def initialize (name = "Anonymous")
    self.name = name # вызывается метод записи name= c проверкой для объекта, который был создан Employee.new (name, salary)
  end
end

class SalariedEmployee < Employee

  def initialize (name = "Anonymous", salary = 0.0) #переписанный метод initialize для подкласса SalariedEmployee
    super (name) # отсылка name методу initialize суперкласса Employee
    self.salary = salary #вызываем метод записи (и проверки) salary= который наследуется из суперкласса Employee
  end
  def print_pay_stub
    print_name #обращение к методу суперкласса Employee
    pay_for_period = (salary / 365) * 14 # обращение к атрибуту чтения salary суперкласса Employee т.к наследуется
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end
end





salaried_employee = SalariedEmployee.new
salaried_employee.name = "Jane Doe with annual salary"
salaried_employee.salary = 50000
salaried_employee.print_pay_stub