class ScraperModule::Scraper 
  attr_accessor :title, :price
  
  def self.scraped_element
    self.all 
  end 
  
  def self.all 
    books = []
    books << self.scraping_page
    books 
  end 

end 

