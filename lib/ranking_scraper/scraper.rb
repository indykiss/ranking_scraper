

class RankingScraper::Scraper 

  def connect_page 
   Nokogiri::HTML(open("http://books.toscrape.com/"))
  end 
  
  def scrape_site 
    self.get_page.css("div.container-fluid.page")
    #could be div.col.sm-8.col-md-9
  end 

  def data_to_info
   scrape_site.each do |rank|
      RankingScraper::Scraper.new_from_index_page(rank)    
    end 
  end 
  
end 

