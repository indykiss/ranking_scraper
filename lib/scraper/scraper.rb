class ScraperModule::Scraper 
  attr_accessor :title, :price
  

  
  def scraping_page
    url = HTTParty.get("https://thegreatestbooks.org/")
    doc = Nokogiri::HTML(url)
    
    #book1 = self.new
    # this is the index of the book 
    index1 = doc.search("h4")[11].text
    # this gives me the index + title + author for simplicity 
    title1 = doc.search("h4")[0].text.gsub(/\s+/, ' ').strip
    # this gives me the beginning part of the book description 
    descr1 = doc.search("div.media-body")[0].text.strip 

    book1 = [index1, title1, descr1]
    
    
    #book2 = self.new
    index2 = doc.search("h4")[11].text
    title2 = doc.search("h4")[1].text.gsub(/\s+/, ' ').strip
    descr2 = doc.search("div.media-body")[1].text.strip 
    book2 = [index2, title2, descr2]
    
    index3 = doc.search("h4")[11].text
    title3 = doc.search("h4")[2].text.gsub(/\s+/, ' ').strip 
    descr3 = doc.search("div.media-body")[2].text.strip 
    book3 = [index3, title3, descr3]
    

    #book_list = [book1, book2]
    @@titles << title1
    @@titles << title2
    @@titles << title3
    
    @@descr << descr1
    @@descr << descr2
    @@descr << descr3
  end 
  

end 

