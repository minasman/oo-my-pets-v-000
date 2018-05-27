class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species
  
  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.length 
  end
  
  def say_species
    "I am a human."
  end
  
  def buy_fish(name)
    pet = Fish.new(name)
    self.pets[:fishes] << pet
  end
end