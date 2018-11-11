=begin




class ScraperModule::Scraper 

  
  def scraper 
    url = "http://books.toscrape.com/"
    unparsed_page = HTTPARTY.get(url)
    
    parsed_page = Nokogiri::HTML(unparsed_page)
    
    binding.pry
    

  end 





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
  binding.pry
end 
end 
    # Ok so I'm here now in terms of 11/7 on 8:56 pm



  #def data_to_info
  # scrape_site.each do |rank|
  #    RankingScraper::Scraper.new_from_index_page(rank)    
  #  end 
  #end 
  

