class ScraperModule::Book 
  attr_accessor :title, :descr, :index  
    @@titles = []
    @@descr = []
    @@all = []
  
  def initialize(title=nil, descr=nil)
    @title = title
    @descr = descr
    @@all << self 
  end
  
  # I can probably make this into 2-3 methods in refactoring 
  def self.scraping_page
    ScraperModule::Scraper.get_page.collect do |book| 
        book_info = {
        :title => book.css("h4").text.gsub(/\s+/, ' ').strip,
        :descr => book.css("div.media-body").text.strip,
      }
      puts book_info[:title] 

      @@titles << book_info.to_a[0][1].split(/[0-9]+[' ']+["."]+/)
      
      ugly_descr = book_info.to_a[1][1].split(/\n/)
      
      ugly_descr.each do |item|
        if item.length > 83
          @@descr << item 
        end 
      end 
    end 
  end 

  def self.titles 
    puts @@titles
  end 
  
    def self.descr
    puts @@descr
  end 

  def self.all 
    @@all 
  end 
  
  # to refactor, make me into 2 methods 
  # also to refactor, maybe fix the weird "puts out last index" thing that's going on 
  
  
  def self.answer
    scraping_page
    input = nil 
    
    
    if input = "exit" || "Exit"
      return "You have chosen to exit the program."
        while input != "exit"
          puts "Please input the rank of the book you want and we will provide name and description. Or press exit."  
          input = gets.strip 
          i = input.to_i
        
            puts "Your selected book is: "
            puts @@titles[0][i][1..-2]
            puts "Here is the beginning of the summary:"
            puts @@descr[i-1]
        end 
    end 

end 



