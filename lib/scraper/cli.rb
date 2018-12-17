
class ScraperModule::CLI 

  def call 
    welcome
    print_books
    answer
  end 
  
  def welcome 
    puts "Welcome to book scraper!"
    puts "We have the following books..."
  end 
  
  def print_books 
    ScraperModule::Scraper.scraping_page
    puts ScraperModule::Book.all
  end 


  def answer
    ScraperModule::Scraper.scraping_page
    input = nil 
    
    while input != "exit" || "Exit"
      input = gets.strip
      
      if input.to_i-1.between?(1,50)
        book = TechcrunchCli::Story.all[input.to_i-1]
        
        puts book.title
        puts book.descr
        
        # would you like to know more? 
      end 
    end 
 
 
  end 
 


  
end 
