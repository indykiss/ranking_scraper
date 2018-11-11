class Scraper 

  
  def scraper 
    url = "http://books.toscrape.com/"
    unparsed_page = HTTPARTY.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
  end 

# here i'm at 47 mins into 1st video with avi. might be good to simplify with that youtube video

  def self.connect_page 
    url = HTTParty.get("http://books.toscrape.com/")
    parsed_page = Nokogiri::HTML(url)
   
     parsed_page.css("div.container-fluid.page").collect do |attribute|
      # could be div.col.sm-8.col-md-9
  
      book_list = {
        :name => attribute.css("h3").text.strip,
        :product_price => attribute.css("div.product_price").text.strip,
        :availability => attribute.css("p.instock.availability").text.strip
      }
  end 
end 
end 



  #def data_to_info
  # scrape_site.each do |rank|
  #    RankingScraper::Scraper.new_from_index_page(rank)    
  #  end 
  #end 
  

