class Owner
  @@all = []
  attr_accessor :name 
  attr_reader :species
  
  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
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
    puts "I am a human"
end