
class ScraperModule::CLI 
  attr_accessor :title, :price 
  @@all = []
  @@titles = []
  @@prices = []
  
  def initialize
    @title = title 
    @price = price 
  end 
  
  def call 
    question
    scraping_page
    titles 
    answer 
    bye
  end 
  
  def question 
    puts "Welcome to book scraper."
    puts "We have..."
  end  
  
  def titles 
    puts @@titles
  end 

  
  def self.scraping_page
    url = HTTParty.get("https://thegreatestbooks.org/")
    doc = Nokogiri::HTML(url)
    
    
    index = doc.search("h4")[0].text
    descr = doc.search("div.media-body")[0].text
    
# make loop here 
    
  
    
    
    binding.pry 
  end   


  def answer  
    input = nil 
    
    while input != "exit"
      puts "Please input the name of the book you want and we will provide price. Or press exit."  
    
      input = gets.strip

        if input == @@titles[0]
          puts "#{@@titles[0]} is available and costs #{@@prices[0]}."
        else if input == @@titles[1]
          puts "#{@@titles[1]} is available and costs #{@@prices[1]}."
        else if input == @@titles[2]
          puts "#{@@titles[2]} is available and costs #{@@prices[2]}."
          
          binding.pry 
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
  
  def self.all 
    @@all << self.scraping_page
    @@all 
  end 

  
end 

# Keep getting an open uri error so doing HTTparty instead. Below code is working ok.
# doc = Nokogiri::HTML(open("https://www.amazon.com/s/ref=lp_17296237011_pg_2?srs=17296237011&rh=i%3Aspecialty-aps&page=2&ie=UTF8&qid=1542059581")) 
   
   
   
   #example of what worked before amazon decided to be mean to me  
   # book1 = self.new 
  #  book_title1 = doc.search("#result_1 h2").text
  #  book_price1 = doc.search("#result_1 span.a-offscreen").text

    #@@all << [book_title1, book_price1] 
    
    


# For .scraping_page
  # ok so the item container actually returns the html for all the thing so that's actually fine 
  # the below code is an option if I dont want to use the above code 3 times but doesn't work somehow... 
  # doc.css("div.s-item-container").collect do |book| 
  #    all_books = {
  #    :title => book.css("h2").text, 
  #    :price => book.css("span.a-offscreen").text}
  #  @@all << all_books 
  #  binding.pry 
  
# Some CSS for a different site which scrapped almost ok... meh 
  #  My CSS Classes for the following string, BUT can't get the right info so trying amazon instead.
  #  The given text are long strings which I don't want and I can't figure out how to narrow down.
  #  doc = Nokogiri::HTML(open("https://www.esquire.com/entertainment/books/g14465218/best-books-of-2018/"))
  #  title = doc.search("span.listicle-slide-hed-text").text 
  #  prod_price = doc.search("span.product-slide-price").text 
  #  descr = doc.search("div.slideshow-slide-dek").text 
  
  
  

  