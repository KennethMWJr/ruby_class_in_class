require_relative 'person'

class Programmer < Person
    attr_accessor :github, :website
    attr_reader :languages

  def initialize(name, age, options)
    super(name, age)
    setup(options)
  end
  def say_hi
    super
    puts "I love to program!!!"
  end
  def build_resume
    "#{name}, github: #{github}, website: #{website}, languages: #{languages.join(', ')}"
  end
  private

  attr_writer :languages

  def setup(options)
    self.github = options[:github]
    self.website = options[:website]
    self.languages = options[:languages]
  end
end

person = Person.new("Steve", 30)
programmer  = Programmer.new("Marcos", 325,
    github: "iJaabel",
    website: "www.bomb.com",
    languages: [:javascript, :ruby, :english]
)

puts Programmer.about
# puts programmer.say_hi

# puts person.say_hi