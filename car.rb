class Car
    attr_accessor :make, :model, :year, :color, :miles
  def initialize(make, model, year, color, miles=0)
    @make = make
    @model = model
    @year = year
    @color = color
    @miles = miles
  end

  def seen_another_year
    self.miles = miles + 15000
  end

  def details
    details = "This #{year} #{make} #{model} has #{miles} miles on it."
   optional_sentence = "#{color} paint it's really fading"
     puts miles >  50000 ?   "#{details} #{optional_sentence}" : details
  end

  def change_color(new_color)
    self.color = new_color
    ahh_fresh_paint
  end

  private

  def ahh_fresh_paint
    puts "The new #{color} color was a good choice"
  end
end

steve = Car.new("VW", "GTI", 2000, "silver", 2000)
# puts steve.make
# puts steve.miles
# steve.seen_another_year
# puts steve.change_color("orange")
# steve.ahh_fresh_paint

4.times do
    steve.seen_another_year
    puts steve.miles
end
puts steve.miles