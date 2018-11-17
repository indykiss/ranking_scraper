
class ScraperModule::CLI 
  attr_accessor :title, :price 
  @@titles = []
  @@descr = []
  
  def call 
    question
    ScraperModule::Scraper.scraping_page
    titles 
    answer 
    bye
  end 
  
  def question 
    puts "Welcome to book scraper!"
    puts "We have..."
  end  
  

  def bye 
    puts "Thanks for coming."
  end 
  

  
end 
