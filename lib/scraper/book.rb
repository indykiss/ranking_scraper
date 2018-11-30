class ScraperModule::Book 
  attr_accessor :title, :descr, :index  
    @@all = []
  
  def initialize(title=nil, descr=nil)
    @title = title
    @descr = descr
    @@all << self 
  end

  def self.all 
    @@all 
  end 
  
end 



