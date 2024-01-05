require "gem"

string = "base16"
symbol = :base16
fixnum = 0
float = 0.00
array = Array.new
array = ['chris', 85]
hash = {"test" => "test"}
regexp = /[abc]/
this = True

# This is a comment
class Person

  attr_accessor

  def initialize(attributes) = {})
    @name = attributes[:name]
  end

  def self.greet
    "hello"
  end
end

personal = Person.new(:name => "Chris")
print Person::greet, " ", person1.name, "\n"
puts "another #{Person::greet} #{person1.name}"
