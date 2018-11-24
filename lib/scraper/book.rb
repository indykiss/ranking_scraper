# I make each individual object of "book"

class Book 
  attr_accessor :title, :descr, :index  
    @@titles = []
    @@descr = []
  
  def initialize(title=nil, descr=nil)
    @title = title
    @descr = descr
  end
  
  def self.all
    @@all 
  end 
  
  def self.reset_all 
    @@all.clear 
  end 
  
  def self.titles 
    @@titles
  end 



end 

