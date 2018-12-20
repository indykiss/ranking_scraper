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
      puts ""
      puts "Please type book number you'd like to know more about."
      input = gets.strip

      if input.count("a-zA-Z") > 0
        puts "That's not a number between 1 - 50. Try again."

        elsif input.to_i-1 <= ScraperModule::Book.all.size
          book = ScraperModule::Book.all[input.to_i-1]
          puts "That book is #{book.title}"
          puts "This book is about... #{book.descr}"
            
          elsif input.to_i == 0 || input.to_i > 50
            puts "That's not a number between 1 - 50. Try again."
      end 
    end 
  end 
  
end 
