
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
    ScraperModule::Book.all.each_with_index do |book, i|
      puts "#{i+1}. #{book.title}"
    end
  end 

  def answer
    input = ""
    while input != "exit"
      puts "What book do you want to read?"
      input = gets.strip

      if input == "exit"
        puts "Thanks for coming!"
        return 
        
        elsif input.to_i-1 <= ScraperModule::Book.all.size
          book = ScraperModule::Book.all[input.to_i-1]
          puts "That book is #{book.title}"
          puts "This book is about... #{book.descr}"
            else 
              puts "That's not a number between 1 - 50. Please try again."
    end 
    end 
  end 

  
end 
