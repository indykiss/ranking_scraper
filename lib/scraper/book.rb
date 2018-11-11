class ScraperModule::Book 
  attr_accessor :name, :price, :availability
  @@all = []


  # I take the info from website and formats it for presenting to user with CLI. 
  
  def self.all 
    puts "TEST"
    
    #bare bone adding a ligament 
    # need to build methods for each thing that I need 
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


