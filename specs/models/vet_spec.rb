require 'rspec'
require_relative "../../models/vet"

describe Owner do


  it 'playarea' do

    mary = Owner.new("Mary")
    pebbles = Cat.new("Pebbles")
    dino = Dog.new("Dino")
    mary.pets = [pebbles, dino]
    p mary.pets

    p pebbles.owner.name
    pebbles.meow
    dino.bark
  end
end
