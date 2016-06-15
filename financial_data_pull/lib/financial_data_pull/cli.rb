

class FinancialDataPull::CLI
  attr_accessor :ticker

  def call
    
    initialprint
    start
  end

  def initialprint
    puts "~~~ Welcome to Tylor's CLI GEM ~~~\n"
  end

  def start

    input = nil
    while input != "exit"

    puts "Please select your desired option:"
    puts "1. GOOG - Alphabet, Inc."
    puts "2. TSLA - Tesla Motors, Inc."
    puts "3. AAPL - Apple, Inc."
    puts "4. FB - Facebook, Inc."
    puts "5. Type in ticker manually"
    puts "6. EXIT\n"
    input = gets.strip.downcase 

    case input
        when "1"
          puts "Google was selected, printing Google:"
          @ticker = "goog"
          FinancialDataPull::Scraper.scrape(ticker)
        when "2"
          puts "Tesla was slected, printing Tesla:"
          @ticker = "tsla"
          FinancialDataPull::Scraper.scrape(ticker)
        when "3"
          puts "Apple was selected, printing Apple:"
          @ticker = "aapl"
          FinancialDataPull::Scraper.scrape(ticker)
        when "4"
          puts "Facebook was selected, printing Facebook:"
          @ticker = "fb"
          FinancialDataPull::Scraper.scrape(ticker)
        when "5"
          puts "Enter your ticker:"
          @ticker = gets.strip.downcase
          FinancialDataPull::Scraper.scrape(ticker)
        when "6"
          puts "Exiting the program..."
          input = "exit"
        else
        end
      end

  end


end