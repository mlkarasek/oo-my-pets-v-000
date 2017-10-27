class Owner

  attr_accessor :owner, :pets
  attr_reader :species

  @@all = []

  def initialize(owner, species = "human")
    @owner = owner
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def buy_cat(name)
    new_kitty = Cat.new(name)
    @pets[:cats] << new_kitty
  end

  def buy_dog(name)
    new_puppy = Dog.new(name)
    @pets[:dogs] << new_puppy
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def walk_dogs
    @pets[:dogs].each do |dogs|
      dogs.mood = "happy"
    end
  end

def self.owner.reset_all 
  self.reset_all
end
