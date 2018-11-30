
class ScraperModule::CLI 

  def call 
    welcome
    answer
    bye
  end 
  
  def welcome 
    puts "Welcome to book scraper!"
    puts "We have the following books..."
  end  

  def answer
    ScraperModule::Scraper.scraping_page
   # print_books: make a method that lists all the books 
    input = nil 

        if input == "exit"
            return "You have chosen to exit the program."
          end 
      
         until input == "exit"
          puts "Please input the rank of the book you want and we will provide name and description. Or press exit."  
          input = gets.strip 
          i = input.to_i
              puts "Your selected book is: "
              puts ScraperModule::Book.all[1][i]
              puts "Here is the beginning of the summary:"
              puts
          end 
          
        # think about how to direct users who type anything other than 1-50. Elsif? 
  end 
 

  def bye 
    puts "Thanks for coming."
  end 
  
end 
