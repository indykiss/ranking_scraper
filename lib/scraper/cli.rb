
class CLI 
  attr_accessor :title, :price 
  @@all = [] 
  
  def call 
    question
    answer 
    bye
  end 
  
  def question 
    puts "Welcome to book scraper."
    puts "We have... " 
    # need list of all the books 
    @@all  
    #@@all.each do |book|
    #puts "#{book.title} - #{book.price} - is available."
  end  
  
  def self.scraping_page

    doc = Nokogiri::HTML(open("https://www.amazon.com/s/ref=lp_17296237011_pg_2?srs=17296237011&rh=i%3Aspecialty-aps&page=2&ie=UTF8&qid=1542059581"))
    
    book = self.new 
    book.title = doc.search("#result_16 h2").text
    book.price = doc.search("#result_16 span.a-offscreen").text


    @@all << book.title 
    @@all << book.price

    binding.pry 
    
  # ok so the item container actually returns the html for all the thing so that's actually fine 
  # doc.css("div.s-item-container").collect do |book| 
  #    all_books = {
  #    :title => book.css("h2").text, 
  #    :price => book.css("span.a-offscreen").text}
  #  @@all << all_books 
  #  binding.pry 
  end 
  
  
  def answer  
    input = nil 
    
    while input != "exit"
      puts "Please input the name of the book you're looking for, and we will provide price. Or press exit."  
    
      input = gets.strip

        if input == "The Only Harmless Great Thing"
          "The Only Harmless Great Thing is available and costs $12."
        else if input == "Before Mars (A Planetfall Novel)"
          "Before Mars (A Planetfall Novel) is available and costs $13."
        else if input == "The Razor"
          "The Razor is available and costs $15."
        else 
          puts "That's not on our list."
        end   
        end 
        end 
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
  
    
  def self.all 
    @@all << self.scraping_page
    @@all 
  end 
  
  def title 
    @title 
  end 
  
  def price
    @price 
  end 
  
  def availability
    @availability
  end 
  



  