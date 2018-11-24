
class Scraper 
  attr_accessor :title, :descr, :index 
  @titles = []
  @descr = [] 
  @all = []

  def get_page 
   url = HTTParty.get("https://thegreatestbooks.org/") 
   doc = Nokogiri::HTML(url)    
  end 

  def self.access_container 
    self.get_page.css("div.col-sm-7")
  end
  
end 


    # i like this but not sure if it could work 
    #@@all =@@titles.zip @@descr 
    #@@titles.zip(@@descr).each_index do |title, descr, i|
    #  puts @@titles[i]
    #  puts @@descr[i]
    #end 
        

  
# I WORKED! BUT MADE TOO MANY SEPARATE CLASS METHODS. First attempt at the loop in scraping_page
    #book_info.each do |doc| 
     # book = self.new 
    #  book.title = doc.search("h4").text.gsub(/\s+/, ' ').strip 
     # @@titles << [book.title] 
    #  book.descr = doc.search("div.media-body").text.strip
    #  @@descr << [book.descr]
    #  @@all << [book] 

  
  
=begin book1 = self.new 
this is the index of the book 
index1 = doc.search("h4")[11].text 
 this gives me the index + title + author for simplicity 
 title1 = doc.search("h4")[0].text.gsub(/\s+/, ' ').strip 
 
  this gives me the beginning part of the book description 
  descr1 = doc.search("div.media-body")[0].text.strip 
  book1 = [index1, title1, descr1] 
  

  book2 = self.new 
  index2 = doc.search("h4")[11].text 
  title2 = doc.search("h4")[1].text.gsub(/\s+/, ' ').strip 
  descr2 = doc.search("div.media-body")[1].text.strip book2 = [index2, title2, descr2] 
  book3 = self.new index3 = doc.search("h4")[11].text 
  title3 = doc.search("h4")[2].text.gsub(/\s+/, ' ').strip 
  descr3 = doc.search("div.media-body")[2].text.strip 
  book3 = [index3, title3, descr3] 
  @@all = [book1, book2, book3] 
  @@titles << title1 
  @@titles << title2 
  @@titles << title3 
  @@descr << descr1 
  @@descr << descr2 
  @@descr << descr3 
  #binding.pry end 




=end


