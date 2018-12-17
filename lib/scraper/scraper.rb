
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

        #new_book.index = book.search("h4").text.gsub(/[^0-9]/, '')
          # new_book.title = book.search("h4 a")[i].text.gsub(/\s+/, '')
           #new_book.title = book.css("h4 a").children.text
          # new_book.descr = book.search("div p")[i].children.text.strip
           # new_book.descr = get_page[i].css("div p").children.text.strip.split(/\n/)
    end 


  end 
    
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
