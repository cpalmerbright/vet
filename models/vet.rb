class Owner

  attr_reader :pets
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def pets=(pets)
    @pets = pets
    pets.each do |pet|
      pet.owner = self
    end
  end
end

class Pet

  attr_accessor :owner

  def initialize(name, species)
    @name = name
    @species = species
  end
end


class Cat < Pet
  def initialize(name, species="Cat")
    super
  end
  
  def meow
    puts "#{@name} says Meow!"
  end
end

class Dog < Pet
  def initialize(name, species="Dog")
    super
  end

  def bark
    puts "#{@name} says Woof!"
  end
end
