class Car
  def initialize (cheese)
    @cheese = cheese
  end
  def rev_engine
    @cheese.make_sound #можно вызвать метод класса внупри другого _несвязанного_ с ним класса!
  end
end

class Engine
  def initialize (sound = "Vroom!!!")
    @sound = sound
  end
  def make_sound #этот метод бужет вызван при вызове метода rev_engine в _несвязанном_ классе Car
    puts @sound
  end
end

engine = Engine.new
car = Car.new(engine) #передали
car.rev_engine # output Vroom!!! т.е. результат make_sound метода класса Engine, который вызван методом rev_engine