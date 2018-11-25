
class ScraperModule::CLI 

  def call 
    welcome
    ScraperModule::Book.titles 
    ScraperModule::Book.answer
    bye
  end 
  
  def welcome 
    puts "Welcome to book scraper!"
    puts "We have the following books..."
  end  

  def bye 
    puts "Thanks for coming."
  end 
  
end 
