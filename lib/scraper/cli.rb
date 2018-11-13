
class CLI 
  attr_accessor :title, :price, :availability
  @@all = []
  
  def call 
    fake_question
    get_input
    bye
  end 
  
  def fake_question
    puts "Welcome to book scraper."
    # puts "Here are the available books: Great Gatsby, Inkheart, Puppies"
    # here we want actual list scrapped from site
    puts "We have " 
    puts @@all  
    puts "Please input the name of the book you're looking for, and we will provide price and availability. Or press exit if you'd like to exit."   
  end  
  
  
  def get_input 
    input = nil 
    
    while input != "exit"
      input = gets.strip
    
      # I'm going to hard code this for now for the ~10 books on the page
      case input 
        when "The Only Harmless Great Thing"
          puts "The Only Harmless Great Thing is available and costs $8."
        when "Before Mars (A Planetfall Novel)"
          puts "Before Mars (A Planetfall Novel) is available and costs $10."
        when "The Razor"
          puts "The Razor is available and costs $12."
        else 
          puts "That's not on our list."
      end 
    end 
  end 
  
  def bye 
    puts "Thanks for coming."
  end 



  #  My CSS Classes for the following string, BUT can't get the right info so trying amazon instead.
  #  The given text are long strings which I don't want and I can't figure out how to narrow down.
  #  doc = Nokogiri::HTML(open("https://www.esquire.com/entertainment/books/g14465218/best-books-of-2018/"))
  #  title = doc.search("span.listicle-slide-hed-text").text 
  #  prod_price = doc.search("span.product-slide-price").text 
  #  descr = doc.search("div.slideshow-slide-dek").text 
  
  def name 
    @name
  end 
  
  def price
    @price 
  end 
  
  def availability
    @availability
  end 
  
end 


  