=begin


class ScraperModule::Ranking 
  # I take the info from website and formats it for presenting to user with CLI. 
  
  attr_accessor :book_name, :price, :availability
  @@all = []
  
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
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  def book_name 
    @book_name
  end 
  
  def price
    @price 
  end 
  
  def availability
    @availability
  end 
  
end 


