
class RankingScraper::CLI 
  
  def call 
    RankingScraper::Scraper.new.data_to_info
    puts "Welcome to book scraper."
  # we connect this with the other classes
  end 
  
  def start 
    # Hi. So here are like 2-3 options maybe. Maybe just one option. 
    # input = gets.strip.to_i 
    end 

  def print_info 
    # here I give the user the info that they've requested
    end 
  
end 
