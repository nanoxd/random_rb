class Person
  include Comparable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    "#{@name}"
  end

  def <=>(other)
    self.name <=> other.name
  end
end

p1 = Person.new("Fer")
p2 = Person.new("Nan")
p3 = Person.new("Do")

# Compare names
if p1 > p2
  puts "#{p1.name}'s name > #{p2.name}'s name"
else
  puts "No dice"
end

# Sort an array of Person objects
puts "Sorted list:"
puts [p1, p2, p3].sort

