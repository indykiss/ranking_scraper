
class ScraperModule::Scraper
  attr_accessor :title, :descr, :index 


  def self.scraping_page
   url = HTTParty.get("https://thegreatestbooks.org/") 
   doc = Nokogiri::HTML(url) 
   
   get_page = doc.search("div.col-xs-12")
    
    get_page.each do |book|
      new_book = ScraperModule::Book.new 
        new_book.index = book.search("h4").text.gsub(/[^0-9]/, '')
        new_book.title = book.search("h4 a").text.gsub(/\s+/, ' ')
        new_book.descr = book.search("div p").children.text.strip
    end 
  end 
end 
