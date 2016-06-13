1. Each page scraped will be that Stock's page in Yahoo finance

http://finance.yahoo.com/q?s=goog&ql=1
http://finance.yahoo.com/q?s=[TICKER]&ql=1
[TICKER]= TSLA, GOOG, APPL


Command line interface giving current financial metrics, starting with 
TSLA, GOOG and APPL

User types in financials-pull

- Shows a list of financials
  Ticker, Current Price, Prev Close, Open, Volume


  -@ roughly ~4:00 in Avi's video, "bundle gem [name]" will use bundler to 
  create gem files to get started
  -@ roughly ~9:15 good permissioning info

# 0 - 14
# self.get_page.css("td.yfnc_tabledata1")[0].text

# Title / Ticker
# self.get_page.css(".title h2").text







# Learned during process:
# "gem list" (in termial) lists all local gems
# "ls -lah" (in terminal) lists permissions for file
# --> "chmod +x filename" would give that filename executable permissions