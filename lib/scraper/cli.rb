
class ScraperModule::CLI 
  attr_accessor :title, :price 
  @@titles = []
  @@descr = []
  
  def call 
    question
    ScraperModule::Scraper.scraping_page
    ScraperModule::Scraper.titles 
    ScraperModule::Scraper.answer 
    bye
  end 
  
  def question 
    puts "Welcome to book scraper!"
    puts "We have the following books..."
  end  

  def bye 
    puts "Thanks for coming."
  end 
  
end 
