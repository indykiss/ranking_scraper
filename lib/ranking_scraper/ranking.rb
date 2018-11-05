
class RankingScraper::Ranking 
  # I take the info from website and formats it for presenting to user with CLI. 
  
  attr_accessor :company_name, :rank, :country, :profits, :sales
  @@all = []
  
  def self.new_from_index_page(rank)
    self.new(
      rank.css("rank").text, 
      rank.css("name").text)
  end 
  
  def initialize(rank=nil, name=nil)
    @rank = rank 
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  binding.pry 
  
end 


