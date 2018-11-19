
class ScrapModule::CLI 

  def call 
    question
    ScrapModule::Scraper.scraping_page
    ScrapModule::Scraper.all 
  #  ScrapModule::Book.titles 
  #  ScrapModule::Scraper.answer 
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
