# I make each individual object of "book"

class Book 
  attr_accessor :title, :descr, :index  
    @@titles = []
    @@descr = []
    @@all = []
  
  def initialize(title=nil, descr=nil)
    @title = title
    @descr = descr
  end
  
  def self.making_book_object(book)
      self.new(
        book_info = {
        :title => book.css("h4").text.gsub(/\s+/, ' ').strip,
        :descr => book.css("div.media-body").text.strip,
      }
        )
      puts book_info[:title] 

      @@titles << book_info.to_a[0][1].split(/[0-9]+[' ']+["."]+/)
      
      ugly_descr = book_info.to_a[1][1].split(/\n/)
      
      ugly_descr.each do |item|
        if item.length > 40
          @@descr << item 
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
  
  def self.answer 
    making_book_object(book)
    input = nil 
    
    #shouldn't input = gets.strip be here?
    
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
