class Person
    attr_accessor :name, :age
    
  def initialize(name, age=2)
    @name = name
    @age = age
  end
  def self.about
    puts 'People are people. We are all human'
  end
#   def name
#     @name
#   end

# def name=(new_name)
#   @name = new_name
# end

#   def age
#     @age
#   end
# def age=(new_age)
#     @age = new_age
# end
  def say_hi
    puts "Hello my name is #{name}, and I am #{age} years old."
  end
 
  def have_birthday
    puts "Happy Birthday"
    increment_age
  end

  def greets(other_person)
    puts "Hello #{other_person.name}, my name is #{name}"
  end

  private

  def increment_age
    self.age = age + 1
  end
end

steve = Person.new('Steve', 30)
matt = Person.new('Matt')
# puts matt.age
# puts steve.age
# steve.say_hi
# steve.name = "Hot and Sweaty Steve"
# puts steve.age = 29
# puts steve.age
# steve.increment_age
# puts steve.age

# steve.greets(matt)