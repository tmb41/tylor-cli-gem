#require "nokogiri"
#require "open-nuri"


class FinancialDataPull::CLI

  def call
    initialprint
    menue
    #scrape
    printticker
  end

  def initialprint
    puts "Financial Data Pull:"
  end

  def menue
    puts "1. GOOG - Alphabet, Inc."
    puts "2. TSLA - Tesla Motors, Inc."
    puts "3. AAPL - Apple, Inc."
    puts "4. FB - Facebook, Inc."
    puts "5. Type in ticker manually"
    puts "6. exit"
    input = gets.strip.downcase

    while input != "exit"

    case input
        when "1"
          puts "Google selected"
          ticker = "goog"
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

  def scrape(ticker)
    #doc = website(blahblah(ticker)blahblah)

    # 0 - 14
    # self.get_page.css("td.yfnc_tabledata1")[0].text

    # Title / Ticker
    # self.get_page.css(".title h2").text
  end



  def printticker
    puts "......................................."
    puts " ~~Stock Name and Ticker~~"
    puts " Prev Close:"              
    puts " Open:"
    puts " Bid:"
    puts " Ask:"
    puts " 1y Target Est:"
    puts " Beta:"
    puts " Next Earnings Date:"
    puts " Day's Range:"
    puts " 52wk Range:"
    puts " Volume:"
    puts " Avg Vol (3m):"
    puts " Market Cap:"
    puts " P/E (ttm):"
    puts " EPS (ttm):"
    puts " Div & Yield:"
    puts "......................................."
  end


end