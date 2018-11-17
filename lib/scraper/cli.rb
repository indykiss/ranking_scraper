
class ScraperModule::CLI 

  def call 
    question
    ScraperModule::Scraper.make_page
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
