

class RankingScraper::Scraper 

  def self.connect_page 
   book_page = Nokogiri::HTML(open("http://books.toscrape.com/"))
   
   book_page.css("div.container-fluid.page").collect do |attribute|
    #could be div.col.sm-8.col-md-9
    
    book_list = {
      :name = attribute.css("h3").text.strip,
      :product_price = attribute.css("div.product_price").text.strip,
      :availability = attribute.css("p.instock.availability").text.strip
    }
  end 

  def data_to_info
   scrape_site.each do |rank|
      RankingScraper::Scraper.new_from_index_page(rank)    
    end 
  end 
  
end 

