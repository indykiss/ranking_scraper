

class RankingScraper::Scraper 

  def connect_page 
   Nokogiri::HTML(open(https://www.forbes.com/global2000/list/))
  end 
  
  def scrape_site 
    self.get_page.css("div#list_table")
  end 

  def data_to_info
   scrape_site.each do |rank|
      RankingScraper::Scraper.new_from_index_page(rank)    
  end 
end 