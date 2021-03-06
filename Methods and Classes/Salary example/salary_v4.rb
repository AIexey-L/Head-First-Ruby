#salary v4 with added class methods for subclass HourlyEmployee

class Employee
  attr_reader :name #метод чтения
  def name=(name) #метод записи name и проверка
    if name == ""
      rise "Name couldn't be blank!"
    end
    @name = name
  end

  def print_name
    puts "Name #{name}"
  end

  def initialize (name = "Anonymous")
    self.name = name # вызывается метод записи name= c проверкой для объекта, который был создан Employee.new (name, salary)
  end
end

class SalariedEmployee < Employee
  attr_reader :salary
  def salary=(salary) #метод записи salary и проверка
    if salary < 0
      raise "A salary of #{salary} isn't valid"
    end
    @salary = salary
  end
  def initialize (name = "Anonymous", salary = 0.0) #переписанный метод initialize для подкласса SalariedEmployee
    super (name) # отсылка name методу initialize суперкласса Employee
    self.salary = salary #вызываем метод записи (и проверки) salary=
  end
  def print_pay_stub
    print_name #обращение к методу суперкласса Employee
    pay_for_period = (salary / 365.0) * 14 # обращение к атрибуту чтения salary суперкласса Employee т.к наследуется
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end
end

class HourlyEmployee < Employee
# определение методов класса, которые вызываются названием класса с точкой, вызов будет: vasja = HourlyEmployee.security_guard("Vasja")
  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end
  def self.casher(name)
    HourlyEmployee.new(name, 12.75, 25)
  end
  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "Hourly wage can't be #{hourly_wage}"
    end
    @hourly_wage = hourly_wage
  end
  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "Hours per week can't be #{hours_per_week}"
    end
    @hours_per_week = hours_per_week
  end
  def initialize (name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
    super (name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end
  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end

end



salaried_employee = SalariedEmployee.new
salaried_employee.name = "Jane Doe with annual salary"
salaried_employee.salary = 50000
salaried_employee.print_pay_stub

hourly_employee = HourlyEmployee.new("Jhon Smith hourly worker", 14.97, 30)
hourly_employee.print_pay_stub

angela = HourlyEmployee.security_guard("Angela")
angela.print_pay_stub

ivan = HourlyEmployee.casher("Ivan")
ivan.print_pay_stub