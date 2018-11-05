
class RankingScraper::Ranking 
  # I take the info from website and formats it for presenting to user with CLI. 
  
  attr_accessor :book_name, :price, :availability
  @@all = []
  
  def self.new_from_index_page(rank)
    self.new(
      rank.css("h3").text, 
      rank.css("product_price").text,
      rank.css("instock availability").text)
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
  
end 


