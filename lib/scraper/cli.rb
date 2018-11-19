
class CLI 

  def call 
    question
    Scraper.scraping_page
    Scraper.all 
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
