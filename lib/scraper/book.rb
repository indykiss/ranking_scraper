# I make each individual object of "book"
#still working

=begin 
class ScraperModule::scraping_pageBook 
  attr_accessor :title, :descr, :index
  @@titles = []
  @@all = []

  def initialize(title = nil, descr = nil)
    @title = title 
    @descr = descr 
    @@titles << self.title
    @@all << self 
  end 

  def self.new_fromHTML(doc) 
    doc = CLI.scraping_page
    self.new = [index, title, descr]
      index = doc.css("h4")[11].text
      title = doc.css("h4")[0].text.gsub(/\s+/, ' ').strip
      descr = doc.css("div.media-body")[0].text.strip
    binding.pry
  end 

end 

=end 