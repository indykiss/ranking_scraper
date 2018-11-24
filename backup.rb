# This is everything working almost perfectly, in the Scraper method. 
# We are trying to move things into the book class 


class Scraper 
  attr_accessor :title, :descr, :index 
  @titles = []
  @descr = [] 
  @all = []

  
  def self.scraping_page
   url = HTTParty.get("https://thegreatestbooks.org/") 
   doc = Nokogiri::HTML(url)     
    
    doc.css("div.col-sm-7").collect do |book|
      book_info = {
        :title => book.css("h4").text.gsub(/\s+/, ' ').strip,
        :descr => book.css("div.media-body").text.strip,
      }

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


  def self.answer 
    scraping_page
    input = nil 
    
    #shouldn't input = gets.strip be here?
    
    while input != "exit"
      puts "Please input the rank of the book you want and we will provide name and description. Or press exit."  
      input = gets.strip 
      i = input.to_i
        
          puts "Your selected book is: "
          puts @titles[0][i][1..-2]
          puts "Here is the beginning of the summary:"
          puts @descr[i-1]
      end 
  end 
  
end 


    # i like this but not sure if it could work 
    #@@all =@@titles.zip @@descr 
    #@@titles.zip(@@descr).each_index do |title, descr, i|
    #  puts @@titles[i]
    #  puts @@descr[i]
    #end 
        

  
# I WORKED! BUT MADE TOO MANY SEPARATE CLASS METHODS. First attempt at the loop in scraping_page
    #book_info.each do |doc| 
     # book = self.new 
    #  book.title = doc.search("h4").text.gsub(/\s+/, ' ').strip 
     # @@titles << [book.title] 
    #  book.descr = doc.search("div.media-body").text.strip
    #  @@descr << [book.descr]
    #  @@all << [book] 

  
  
=begin book1 = self.new 
this is the index of the book 
index1 = doc.search("h4")[11].text 
 this gives me the index + title + author for simplicity 
 title1 = doc.search("h4")[0].text.gsub(/\s+/, ' ').strip 
 
  this gives me the beginning part of the book description 
  descr1 = doc.search("div.media-body")[0].text.strip 
  book1 = [index1, title1, descr1] 
  

  book2 = self.new 
  index2 = doc.search("h4")[11].text 
  title2 = doc.search("h4")[1].text.gsub(/\s+/, ' ').strip 
  descr2 = doc.search("div.media-body")[1].text.strip book2 = [index2, title2, descr2] 
  book3 = self.new index3 = doc.search("h4")[11].text 
  title3 = doc.search("h4")[2].text.gsub(/\s+/, ' ').strip 
  descr3 = doc.search("div.media-body")[2].text.strip 
  book3 = [index3, title3, descr3] 
  @@all = [book1, book2, book3] 
  @@titles << title1 
  @@titles << title2 
  @@titles << title3 
  @@descr << descr1 
  @@descr << descr2 
  @@descr << descr3 
  #binding.pry end 




=end

















# This is everything working, still hard coded, but within two separate classes 


class ScraperModule::CLI 

  def call 
    question
    ScraperModule::Scraper.scraping_page
    ScraperModule::Scraper.titles 
    ScraperModule::Scraper.answer 
    bye
  end 
  
  def question 
    puts "Welcome to book scraper!"
    puts "We have the following books..."
  end  

  def bye 
    puts "Thanks for coming."
  end 
  
end 





class ScraperModule::Scraper 
  attr_accessor :title, :descr, :index
  @@titles = [] 
  @@descr = []
  @@all = []
  
  def self.scraping_page
    url = HTTParty.get("https://thegreatestbooks.org/")
    doc = Nokogiri::HTML(url)
    
    book1 = self.new
    # this is the index of the book 
    index1 = doc.search("h4")[11].text
    # this gives me the index + title + author for simplicity 
    title1 = doc.search("h4")[0].text.gsub(/\s+/, ' ').strip
    # this gives me the beginning part of the book description 
    descr1 = doc.search("div.media-body")[0].text.strip 
    book1 = [index1, title1, descr1]
    
    book2 = self.new
    index2 = doc.search("h4")[11].text
    title2 = doc.search("h4")[1].text.gsub(/\s+/, ' ').strip
    descr2 = doc.search("div.media-body")[1].text.strip 
    book2 = [index2, title2, descr2]
    
    book3 = self.new
    index3 = doc.search("h4")[11].text
    title3 = doc.search("h4")[2].text.gsub(/\s+/, ' ').strip 
    descr3 = doc.search("div.media-body")[2].text.strip 
    book3 = [index3, title3, descr3]
    

    @@all = [book1, book2, book3]
    
    @@titles << title1
    @@titles << title2
    @@titles << title3
    
    @@descr << descr1
    @@descr << descr2
    @@descr << descr3
    
    #binding.pry
  end 
  
  def self.titles 
    puts @@titles
  end 
  
  
  def self.answer  
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
  

end 






# This is everything hard coded in one class but it's actually working so here is record of that 


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
    descr1 = doc.search("div.media-body")[0].text.strip 

    book1 = [index1, title1, descr1]
    
    
    #book2 = self.new
    index2 = doc.search("h4")[11].text
    title2 = doc.search("h4")[1].text.gsub(/\s+/, ' ').strip
    descr2 = doc.search("div.media-body")[1].text.strip 
    book2 = [index2, title2, descr2]
    
    index3 = doc.search("h4")[11].text
    title3 = doc.search("h4")[2].text.gsub(/\s+/, ' ').strip 
    descr3 = doc.search("div.media-body")[2].text.strip 
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
  
  
  
  #Random bits of code of previous attempts to do things:
  # Under scraper/scraper:
  #
  # # def self.scraping_page
 #   doc = Nokogiri::HTML(open("https://www.amazon.com/s/ref=lp_17296237011_pg_2?srs=17296237011&rh=i%3Aspecialty-aps&page=2&ie=UTF8&qid=1542059581"))
    
    # here I need to make this scrape the 3 books on the page 
    
 #   book = self.new 
 #   book.title = doc.search("#result_16 h2").text
 #   book.price = doc.search("#result_16 span.a-offscreen").text
 #   book.availability = true
 #   book 
 # end 
 
 
  #def self.connect_page 
  #  url = HTTParty.get("http://books.toscrape.com/")
  #  parsed_page = Nokogiri::HTML(url)
   
  #   parsed_page.css("div.container-fluid.page").collect do |attribute|
      # could be div.col.sm-8.col-md-9
  
   #   book_list = {
    #    :name => attribute.css("h3").text.strip,
     #   :product_price => attribute.css("div.product_price").text.strip,
    #    :availability => attribute.css("p.instock.availability").text.strip
    #  }
#  end 
#end 
#end 



  #def data_to_info
  # scrape_site.each do |rank|
  #    RankingScraper::Scraper.new_from_index_page(rank)    
  #  end 
  #end 
  

# Bits of Random code under scraper/CLI


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
  
  

 
  # Random code from the book.rb class 
  
# I am here
# ITS WORKING. ITS SCRAPING. So we're scraping a random book from the 2nd page of an amazon list 
# because any other page on amazon has too much code (?) and destroys the IDE's brain 
# So desperate. Just want this working. Scraping ANYTHING. 

#  def self.scraping_page
#    doc = Nokogiri::HTML(open("https://www.amazon.com/s/ref=lp_17296237011_pg_2?srs=17296237011&rh=i%3Aspecialty-aps&page=2&ie=UTF8&qid=1542059581"))
    
#    book = self.new 
#    book.title = doc.search("#result_16 h2").text
#    book.price = doc.search("#result_16 span.a-offscreen").text
#    book.availability = true
#    book 

#  end 


  # My CSS Classes for the following string, BUT can't get the right info so trying amazon instead.
  # The given text are long strings which I don't want.
  
  #  doc = Nokogiri::HTML(open("https://www.esquire.com/entertainment/books/g14465218/best-books-of-2018/"))
  #  title = doc.search("span.listicle-slide-hed-text").text 
  #  prod_price = doc.search("span.product-slide-price").text 
  #  descr = doc.search("div.slideshow-slide-dek").text 


#  def self.all 
 #   puts "TEST"
    #bare bone adding a ligament 
    # need to build methods for each thing that I need with scrapped site
   # book_1 = self.new 
   # book_1.name = "Great Gatsby"
   # book_1.price = "$16"
   # book_1.availability = "available"
    
   # book_2 = self.new 
   # book_2.name = "Inkheart"
   # book_2.price = "$19"
   # book_2.availability = "not available"
    
 #   ["book_1", "book_2"]
    
 # end 
  
  
#   def self.book_tracker 
    
    #all_books = []
    
    #all_books << self.parsed_page
    # just made up scraped_url
    
#  end 
  
  
  
#end 


  
  
=begin

  def self.new_from_index_page(data)
    self.new(
      @book_name = data.css("h3").text, 
      @product_price = data.css("product_price").text,
      @availability = data.css("instock availability").text)
  end 
  
  def initialize(book_name = nil, price = nil, availability)
    @book_name = book_name 
    @price = price 
    @availability = availability
    @@all << self.book_name
  end 
  
end 
=end




  