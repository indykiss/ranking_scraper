
class CLI 

  def call 
    welcome
    Book.titles 
    Book.answer
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
