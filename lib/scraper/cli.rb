
class CLI 

  def call 
    question
    Book.scraping_page
   # Scraper.all 
    Book.titles 
    Book.answer 
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
