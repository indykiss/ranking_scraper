
class ScraperModule::CLI 
  attr_accessor :title, :price 
  @@titles = []
  @@descr = []
  
  def call 
    question
    ScraperModule::Scraper.scraping_page
    titles 
    answer 
    bye
  end 
  
  def question 
    puts "Welcome to book scraper!"
    puts "We have..."
  end  
  
  def titles 
    puts @@titles
  end 



  def answer  
    input = nil 
    
    while input != "exit"
      puts "Please input the name of the book you want and we will provide a description. Or press exit."  
    
      input = gets.strip

        if input == @@titles[0]
          puts "#{@@titles[0]} is about... #{@@descr[0]}."
          puts "Here is the list of books available again." 
          puts @@titles
        else if input == @@titles[1]
          puts "#{@@titles[1]} is about... #{@@descr[1]}."
          puts "Here is the list of books available again." 
          puts @@titles
        else if input == @@titles[2]
          puts "#{@@titles[2]} is about... #{@@descr[2]}."
          puts "Here is the list of books available again." 
          puts @@titles
          
         # binding.pry 
        else 
          puts "That's not on our list."
        end   
        end 
        end 
     end 
  end 
  
  def bye 
    puts "Thanks for coming."
  end 
  

  
end 
