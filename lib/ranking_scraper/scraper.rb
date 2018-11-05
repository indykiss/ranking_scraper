

class RankingScraper::Scraper 

  def connect_page 
    session = Capybara::Session.new(:poltergeist)
    session.visit('https://www.forbes.com/global2000/list/#tab:overall')
    puts session.document.title
  end 
  
  def 



end 