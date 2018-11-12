

class Book 
  attr_accessor :name, :price, :availability
  @@all = []

  def initialize(name = nil, price = nil, availability)
    @name = name 
    @price = price 
    @availability = availability
    @@all << self.name
  end 

# I am here
# ITS WORKING. ITS SCRAPING

  def self.scraping_page
    doc = Nokogiri::HTML(open("https://www.amazon.com/s/ref=lp_283155_nr_p_n_feature_browse-b_0?fst=as%3Aoff&rh=n%3A283155%2Cp_n_feature_browse-bin%3A2656022011&bbn=283155&ie=UTF8&qid=1542059058&rnid=618072011"))
    
    
    binding.pry
  end 


  # My CSS Classes for the following string, BUT can't get the right info so trying amazon instead.
  # The given text are long strings which I don't want.
  
  #  doc = Nokogiri::HTML(open("https://www.esquire.com/entertainment/books/g14465218/best-books-of-2018/"))
  #  title = doc.search("span.listicle-slide-hed-text").text 
  #  prod_price = doc.search("span.product-slide-price").text 
  #  descr = doc.search("div.slideshow-slide-dek").text 


  def self.all 
    puts "TEST"
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
    
    ["book_1", "book_2"]
    
  end 
  
  
  def self.book_tracker 
    
    #all_books = []
    
    #all_books << self.parsed_page
    # just made up scraped_url
    
  end 
  
  
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


