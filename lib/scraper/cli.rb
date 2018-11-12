
class CLI 
  
  def call 
    fake_question
    get_input
    bye
  end 
  
  def fake_question
    puts "Welcome to book scraper."
    # puts "Here are the available books: Great Gatsby, Inkheart, Puppies"
    # here we want actual list scrapped from site
     @books = Book.all
    puts "Please input the name of the book you're looking for, and we will provide price and availability. Or press exit if you'd like to exit."   
  end  
  
  def get_input 
    input = nil 
    
    while input != "exit"
      input = gets.strip
    
      # I'm going to hard code this for now for the ~10 books on the page
      case input 
        when "Great Gatsby"
          puts "The Great Gatsby is available and costs $19."
        when "Inkheart"
           puts "Inkheart is available and costs $22."
        when "Puppies"
           puts "Puppies is not available."
        else 
          puts "That's not on our list."
      end 
    end 
  end 
  
  def bye 
    puts "Thanks for coming."
  end 
  
end 
