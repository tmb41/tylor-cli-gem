require 'nokogiri'
require 'open-uri'


class FinancialDataPull::Scraper
  #:ticker

  def self.scrape(ticker)
    
    #search_url = "http://finance.yahoo.com/q?s=#{@ticker}&ql=1"
    #search_url = "http://finance.yahoo.com/q?s=goog&ql=1"
    #binding.pry
    #website = Nokogiri::HTML(open(search_url))
    website = Nokogiri::HTML(open("http://finance.yahoo.com/q?s=#{ticker}&ql=1"))
    
    FinancialDataPull::Stock.new_from_scrape(website)
  end




end