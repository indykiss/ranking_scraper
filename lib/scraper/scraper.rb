class ScraperModule::Scraper 
  attr_accessor :title, :descr, :index
  @@titles = [] 
  @@descr = []
  

  
  def self.scraping_page
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
  
  def self.titles 
    puts @@titles
  end 
  
  
  def self.answer  
    input = nil 
    
    while input != "exit"
      puts "Please input the name of the book you want and we will provide a description. Or press exit."  
    
      input = gets.strip

        if input == @@titles[0]
          puts "#{@@titles[0]} is about... #{@@descr[0]}."
          puts "Here is the list of books available again." 
          puts @@titles
        else if input == @@titles[1]
          puts "#{@@titles[1]} is about... #{@@descr[1]}."
          puts "Here is the list of books available again." 
          puts @@titles
        else if input == @@titles[2]
          puts "#{@@titles[2]} is about... #{@@descr[2]}."
          puts "Here is the list of books available again." 
          puts @@titles
          
         # binding.pry 
        else 
          puts "That's not on our list."
        end   
        end 
        end 
     end 
  end 
  

end 

