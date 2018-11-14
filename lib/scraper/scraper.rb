class Scraper 
  attr_accessor :title, :price, :availability
  
  def self.scraped_element
    self.all 
  end 
  
  def self.all 
    books = []
    books << self.scraping_page
    books 
  end 

 # def self.scraping_page
 #   doc = Nokogiri::HTML(open("https://www.amazon.com/s/ref=lp_17296237011_pg_2?srs=17296237011&rh=i%3Aspecialty-aps&page=2&ie=UTF8&qid=1542059581"))
    
    # here I need to make this scrape the 3 books on the page 
    
 #   book = self.new 
 #   book.title = doc.search("#result_16 h2").text
 #   book.price = doc.search("#result_16 span.a-offscreen").text
 #   book.availability = true
 #   book 
 # end 

end 


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
  

