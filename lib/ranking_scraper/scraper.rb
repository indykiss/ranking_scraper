

class RankingScraper::Scraper 

  def connect_page 
    session = Capybara::Session.new(:poltergeist)
    session.visit('http://stackoverflow.com/')
    puts session.document.title
  end 
  
  def 



end 