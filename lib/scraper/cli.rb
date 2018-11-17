
class ScraperModule::CLI 
  attr_accessor :title, :price 
  @@all = []
  @@titles = []
  @@descr = []
  
  
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

  
  def scraping_page
    url = HTTParty.get("https://thegreatestbooks.org/")
    doc = Nokogiri::HTML(url)
    
    # this isn't working 
    
    #book1 = self.new
    # this is the index of the book 
    index1 = doc.search("h4")[11].text
    # this gives me the index + title + author for simplicity 
    title1 = doc.search("h4")[0].text.gsub(/\s+/, ' ').strip
    # this gives me the beginning part of the book description 
    descr1 = doc.search("div.media-body")[0].text

    book1 = [index1, title1, descr1]
    
    
    #book2 = self.new
    index2 = doc.search("h4")[11].text
    title2 = doc.search("h4")[1].text.gsub(/\s+/, ' ').strip
    descr2 = doc.search("div.media-body")[1].text
    book2 = [index2, title2, descr2]
    
    index3 = doc.search("h4")[11].text
    title3 = doc.search("h4")[2].text.gsub(/\s+/, ' ').strip 
    descr3 = doc.search("div.media-body")[2].text
    book3 = [index3, title3, descr3]
    

    #book_list = [book1, book2]
    @@titles << title1
    @@titles << title2
    @@titles << title3
    
    @@descr << descr1
    @@descr << descr2
    @@descr << descr3
  end 
    


  def answer  
    input = nil 
    
    while input != "exit"
      puts "Please input the name of the book you want and we will provide a description. Or press exit."  
    
      input = gets.strip

        if input == @@titles[0]
          puts "#{@@titles[0]} is available and is about: #{@@descr[0]}."
        else if input == @@titles[1]
          puts "#{@@titles[1]} is available and is about: #{@@descr[1]}."
        else if input == @@titles[2]
          puts "#{@@titles[2]} is available and is about: #{@@descr[2]}."
          
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
  
  
  

  