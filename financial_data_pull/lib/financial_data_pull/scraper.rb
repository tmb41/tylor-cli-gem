
class FinancialDataPull::Scraper

  def self.scrape(ticker)
    
    website = Nokogiri::HTML(open("http://finance.yahoo.com/q?s=#{ticker}&ql=1"))
    FinancialDataPull::Stock.new_from_scrape(website)
    
  end

end