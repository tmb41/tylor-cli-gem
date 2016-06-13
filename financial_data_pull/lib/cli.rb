require "nokogiri"
require "open-uri"
require "pry"


class FinancialDataPull::CLI
  attr_accessor :ticker, :title, :prevclose, :open, :bid, :ask, :oneyeartarget, :beta, :nextearningdate, :daysrange, :fiftytwoweekrange, :volume, :avgvolume, :marketcap, :pettm, :epsttm, :divyield

  def call
    initialprint
    menue
    scrape
    printticker
    again?
  end

  def initialprint
    puts "Financial Data Pull:"
  end

  def menue
    puts "Please select your desired option:"
    puts "1. GOOG - Alphabet, Inc."
    puts "2. TSLA - Tesla Motors, Inc."
    puts "3. AAPL - Apple, Inc."
    puts "4. FB - Facebook, Inc."
    puts "5. Type in ticker manually"
    puts "6. exit\n"
    input = gets.strip.downcase

    while input != "exit"

    case input
        when "1"
          puts "Google selected"
          @ticker = "goog"
          input = "exit"
        when "2"
          puts "Tesla slected"
          ticker = "tsla"
          input = "exit"
        when "3"
          puts "Apple selected"
          ticker = "aapl"
          input = "exit"
        when "4"
          puts "Facebook selected"
          ticker = "fb"
          input = "exit"
        when "5"
          puts "Enter your ticker:"
          ticker = gets.strip.downcase
          input = "exit"
        when "6"
          puts "Exiting the program"
          input = "exit"
        else
        end
      end

  end

  def scrape
    
    search_url = "http://finance.yahoo.com/q?s=#{@ticker}&ql=1"
    #binding.pry
    website = Nokogiri::HTML(open(search_url))
    

    # 0 - 14 from table
     @prevclose = website.css("td.yfnc_tabledata1")[0].text
     @open = website.css("td.yfnc_tabledata1")[1].text
     @bid = website.css("td.yfnc_tabledata1")[2].text
     @ask = website.css("td.yfnc_tabledata1")[3].text
     @oneyeartarget = website.css("td.yfnc_tabledata1")[4].text
     @beta = website.css("td.yfnc_tabledata1")[5].text
     @nextearningdate = website.css("td.yfnc_tabledata1")[6].text
     @daysrange = website.css("td.yfnc_tabledata1")[7].text
     @fiftytwoweekrange = website.css("td.yfnc_tabledata1")[8].text
     @volume = website.css("td.yfnc_tabledata1")[9].text
     @avgvolume = website.css("td.yfnc_tabledata1")[10].text
     @marketcap = website.css("td.yfnc_tabledata1")[11].text
     @pettm = website.css("td.yfnc_tabledata1")[12].text
     @epsttm = website.css("td.yfnc_tabledata1")[13].text
     @divyield = website.css("td.yfnc_tabledata1")[14].text
    
    #title
     @title = website.css(".title h2").text
     #binding.pry
  end



  def printticker
    puts "......................................."
    puts " ~~#{title}~~"
    puts " Prev Close: #{prevclose}"              
    puts " Open: #{open}"
    puts " Bid: #{bid}"
    puts " Ask: #{ask}"
    puts " 1y Target Est: #{oneyeartarget}"
    puts " Beta: #{beta}"
    puts " Next Earnings Date: #{nextearningdate}"
    puts " Day's Range: #{daysrange}"
    puts " 52wk Range: #{fiftytwoweekrange}"
    puts " Volume: #{volume}"
    puts " Avg Vol (3m): #{avgvolume}"
    puts " Market Cap: #{marketcap}"
    puts " P/E (ttm): #{pettm}"
    puts " EPS (ttm): #{epsttm}"
    puts " Div & Yield: #{divyield}"
    puts ".......................................\n\n"
  end

  def again?
    input = nil
    menue
  end


end