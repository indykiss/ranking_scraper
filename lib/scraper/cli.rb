
class ScraperModule::CLI 

  def call 
    welcome
    print_books
    answer
    bye
  end 
  
  def welcome 
    puts "Welcome to book scraper!"
    puts "We have the following books..."
  end  

  def print_books
    puts ScraperModule::Book.all
  end 

  def answer
    ScraperModule::Scraper.scraping_page
    print_books
    input = nil 
    
    if input == "exit"
      return "You have chosen to exit the program."
    end 
      
    until input == "exit"
        puts "Please input the rank of the book you want and we will provide name and descriptio. Or press exit."  
      input = gets.strip 

      if input.to_i.between?(1, 50)
              puts "Your selected book is: "
              #puts ScraperModule::Book.all[1][i]
              puts "Here is the beginning of the summary:"
              puts          
      else 
            return "try again"
          end 
          end 
        # think about how to direct users who type anything other than 1-50. Elsif? 
    binding.pry
  
  end 
 

  def bye 
    puts "Thanks for coming."
  end 
  
end 
