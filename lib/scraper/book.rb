# I make each individual object of "book"


=begin 
class ScraperModule::Book 
  attr_accessor :title, :descr, :index, :book_object  
  @@all = []
  @@titles = []
  
  def self.all
    @@all
  end

  #def initialize(title = nil, descr = nil)
  #  @title = title 
  #  @descr = descr 
  #  @@titles << self.title
  #  @@all << self 
  #end 
  
  def book_object
    @book_object ||= ScraperModule::Scraper.scraping_page 
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

=end 