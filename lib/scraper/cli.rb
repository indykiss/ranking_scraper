
class CLI 
  
  def call 
    fake_question
    get_input
    bye
  end 
  
  def fake_question
    puts "Welcome to book scraper."
    puts "Here are the available books: Great Gatsby, Inkheart, Puppies"
  end  
  
  def get_input 
    puts "Please input the name of the book you're looking for, and we will provide price and availability."   
    input = nil 
    
    while input != "exit"
    input = gets.strip.downcase
    
    case input 
      when "Great Gatsby"
        puts "The Great Gatsby is available and costs $19."
      when "Inkheart"
         puts "Inkheart is available and costs $22."
      when "Puppies"
         puts "Puppies is not available."
    end 
  end 
  

  def bye 
    puts "Thanks for coming."
  end 
  
  
  def start 
    # Hi. So here are like 2-3 options maybe. Maybe just one option. 
    # input = gets.strip.to_i
    end 

  def print_info 
    # here I give the user the info that they've requested
    end 
 
  
end 
