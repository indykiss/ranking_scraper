
class Scraper 
  attr_accessor :title, :descr, :index 
  @titles = []
  @descr = [] 
  @all = []

  
  def self.scraping_page
   url = HTTParty.get("https://thegreatestbooks.org/") 
   doc = Nokogiri::HTML(url)     
    
    doc.css("div.col-sm-7").collect do |book|
      #book = Book.new 
     # book << book_info
      book_info = {
        :title => book.css("h4").text.gsub(/\s+/, ' ').strip,
        :descr => book.css("div.media-body").text.strip,
      }

      puts book_info[:title] 

      #book_info[1][0]

      #I work! better but catch 22 :(
      @titles << book_info.to_a[0][1].split(/[0-9]+./)
      
      ugly_descr = book_info.to_a[1][1].split(/\n/)
    
      ugly_descr.each do |item|
        if item.length > 30
          @descr << item 
        end 
      end 
    
    @all = @titles.zip(@descr)
    @all 
    binding.pry
  end 

  def self.titles 
    return @titles 
    binding.pry 
  end 
  
  def self.descr
    puts @descr
  end 
  
  
  def self.all 
    @@all 
  end 

#ending scraper class here for now   
end 




  
  def self.answer 
    input = nil 
    
    #shouldn't input = gets.strip be here?
    
    #if input != "exit" || "quit"
     # input = gets.strip 
    #  puts "Please input the rank of the book you want and we will provide name and description. Or press exit."  

    #@titles.each_with_index do |book, i|
     #   if input = i 
      #    puts "Your selected ranking is: .."
      #    puts @titles[0][i]
     #     puts "And here is the beginning of the summary:"
    #      puts @descr[i]
    #      binding.pry 

     #   else if input != i 
      #      puts "That's not on our list."
      #  else 
       
       #   return "oops broken loop" 
        #  binding.pry 
     # end 
     # end 
    #binding.pry 
    end 
    


    # i like this but not sure if it could work 
    #@@all =@@titles.zip @@descr 
    #@@titles.zip(@@descr).each_index do |title, descr, i|
    #  puts @@titles[i]
    #  puts @@descr[i]
    #end 



# Under answer method, one of the many reasons why I don't work is because the @@titles and stuff AREN'T ARRAYS OF ARRAYS :(
     # if input.to_i == 1
      #  puts "#{@@titles[0]} is about... #{@@descr[0]}." 
       # puts "Here is the list of books available again." 
       # binding.pry 
        #puts @@titles 
        
    
        
  #    else if input == @@titles[1] 
  #      puts "#{@@titles[1]} is about... #{@@descr[1]}." 
  #      puts "Here is the list of books available again." 
  #      puts @@titles else if input == @@titles[2] 
  #      puts "#{@@titles[2]} is about... #{@@descr[2]}." 
  #      puts "Here is the list of books available again." 
  #      puts @@titles 
  #    else puts "That's not on our list." 
   #   end 
    #  end 
    #  end 
    #end 

  
# I WORKED! BUT MADE TOO MANY SEPARATE CLASS METHODS. First attempt at the loop in scraping_page
    #book_info.each do |doc| 
     # book = self.new 
    #  book.title = doc.search("h4").text.gsub(/\s+/, ' ').strip 
     # @@titles << [book.title] 
    #  book.descr = doc.search("div.media-body").text.strip
    #  @@descr << [book.descr]
    #  @@all << [book] 
    
  # i am broken
     # book.index = doc.search("h4").text.scan(/\d+/).first
     # @@index << [book.index]
  
  
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


