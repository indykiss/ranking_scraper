# I make each individual object of "book"

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
  
  def self.reset_all 
    @@all.clear 
  end 

  #def self.new_fromHTML(doc) 
   # doc = CLI.scraping_page
    #self.new = [index, title, descr]
    #  index = doc.css("h4")[11].text
    #  title = doc.css("h4")[0].text.gsub(/\s+/, ' ').strip
    #  descr = doc.css("div.media-body")[0].text.strip
    #binding.pry
  #end 


end 

