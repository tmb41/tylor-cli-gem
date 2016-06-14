class FinancialDataPull::Stock
attr_accessor :ticker, :title, :prevclose, :open, :bid, :ask, :oneyeartarget, 
  :beta, :nextearningdate, :daysrange, :fiftytwoweekrange, :volume, :avgvolume, :marketcap, 
  :pettm, :epsttm, :divyield


  def self.new_from_scrape(website)

    self.new(
    # 0 - 14 from table
   @prevclose = website.css("td.yfnc_tabledata1")[0].text,
   @open = website.css("td.yfnc_tabledata1")[1].text,
   @bid = website.css("td.yfnc_tabledata1")[2].text,
   @ask = website.css("td.yfnc_tabledata1")[3].text,
   @oneyeartarget = website.css("td.yfnc_tabledata1")[4].text,
   @beta = website.css("td.yfnc_tabledata1")[5].text,
   @nextearningdate = website.css("td.yfnc_tabledata1")[6].text,
   @daysrange = website.css("td.yfnc_tabledata1")[7].text,
   @fiftytwoweekrange = website.css("td.yfnc_tabledata1")[8].text,
   @volume = website.css("td.yfnc_tabledata1")[9].text,
   @avgvolume = website.css("td.yfnc_tabledata1")[10].text,
   @marketcap = website.css("td.yfnc_tabledata1")[11].text,
   @pettm = website.css("td.yfnc_tabledata1")[12].text,
   @epsttm = website.css("td.yfnc_tabledata1")[13].text,
   @divyield = website.css("td.yfnc_tabledata1")[14].text,
    
    #title
    @title = website.css(".title h2").text
    )
    printstock
    # binding.pry
  end

  def initialize(prevclose=nil, open=nil, bid=nil, ask=nil, oneyeartarget=nil, beta=nil, nextearningdate=nil, daysrange=nil, fiftytwoweekrange=nil, volume=nil, avgvolume=nil, marketcap=nil, pettm=nil, epsttm=nil, divyield=nil, title=nil)
    @prevclose = prevclose
    @open = open
    @bid = bid
    @ask = ask
    @oneyeartarget = oneyeartarget
    @beta = beta
    @nextearningdate = nextearningdate
    @daysrange = daysrange
    @fiftytwoweekrange = fiftytwoweekrange
    @volume = volume
    @avgvolume = avgvolume
    @marketcap = marketcap
    @pettm = pettm
    @epsttm = epsttm
    @divyield = divyield
    @title = title
  end

  def self.printstock
    puts "......................................."
    puts " ~~#{@title}~~"
    puts " Prev Close: #{@prevclose}"              
    puts " Open: #{@open}"
    puts " Bid: #{@bid}"
    puts " Ask: #{@ask}"
    puts " 1y Target Est: #{@oneyeartarget}"
    puts " Beta: #{@beta}"
    puts " Next Earnings Date: #{@nextearningdate}"
    puts " Day's Range: #{@daysrange}"
    puts " 52wk Range: #{@fiftytwoweekrange}"
    puts " Volume: #{@volume}"
    puts " Avg Vol (3m): #{@avgvolume}"
    puts " Market Cap: #{@marketcap}"
    puts " P/E (ttm): #{@pettm}"
    puts " EPS (ttm): #{@epsttm}"
    puts " Div & Yield: #{@divyield}"
    puts ".......................................\n\n"
  end



end



