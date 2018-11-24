# I make each individual object of "book"

class Book 
  attr_accessor :title, :descr, :index  
    @@titles = []
    @@descr = []
    @titles = []
    @descr = []
  
  def initialize(title=nil, descr=nil)
    @title = title
    @descr = descr
  end
  
  def making_book_object(book)
      self.new(
        book_info = {
        :title => book.css("h4").text.gsub(/\s+/, ' ').strip,
        :descr => book.css("div.media-body").text.strip,
      }
        )
      puts book_info[:title] 

      @titles << book_info.to_a[0][1].split(/[0-9]+[' ']+["."]+/)
      
      ugly_descr = book_info.to_a[1][1].split(/\n/)
      
      ugly_descr.each do |item|
        if item.length > 40
          @descr << item 
        end 
      end 
  end 
  end 

  def self.titles 
    puts @titles
  end 
  
    def self.descr
    puts @descr
  end 

  def self.all 
    @@all 
  end 

end 

