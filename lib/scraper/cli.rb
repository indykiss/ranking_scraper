
class Module::CLI 

  def call 
    question
    Module::Scraper.scraping_page
    Module::Scraper.all 
  #  Book.titles 
  #  Scraper.answer 
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
