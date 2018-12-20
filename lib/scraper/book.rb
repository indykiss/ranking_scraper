class ScraperModule::Book 
  attr_accessor :title, :descr, :index  
    @@all = []

  def initialize(title=nil, descr=nil, index =nil)
    @title = title
    @descr = descr
    @index = index 
    @@all << self
  end

  def self.all 
    @@all[0...-1]
  end 
  
  
  def self.save 
    @@all << self 
  end 
  
  
end 



