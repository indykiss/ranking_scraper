
class ScraperModule::Scraper

  def self.scraping_page
   url = HTTParty.get("https://thegreatestbooks.org/") 
   doc = Nokogiri::HTML(url) 
   get_page = doc.css("div.col-sm-7 ol li div.row")
    
    get_page.each do |book|
      new_book = ScraperModule::Book.new 
      new_book.title = get_page[0].css("h4 a").children.text
      new_book.descr = get_page[0].css("div p").children.text.split(/\n/).strip
      # add the book url too 
    end 
  end 
    
    
    binding.pry
    #need to iterate instead of collect and make book object 
    #get_page.collect do |book| 
    #    book_info = {
    #    :title => book.css("h4").text.gsub(/\s+/, ' ').strip,
    #    :descr => book.css("div.media-body").text.strip,
    #  }
    #  puts book_info[:title] 

   #   ScraperModule::Book.titles << book_info.to_a[0][1].split(/[0-9]+[' ']+["."]+/)
      
     # ugly_descr = book_info.to_a[1][1].split(/\n/)
      
    #  ugly_descr.each do |item|
    #    if item.length > 83
     #     ScraperModule::Book.descr << item 
    #    end 
    #  end 
    #end 
  #end 
  
end 
