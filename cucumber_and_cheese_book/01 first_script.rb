require 'webdrivers'
require 'watir'

browser = Watir::Browser.new :chrome
browser.goto 'http://www.apple.com'
browser.close

browser = Watir::Browser.new :firefox
browser.goto 'http://www.apple.com'
browser.close

# TODO MS browsers not working atm, for whatever reason. Gonna fix that later, maybe...
# browser = Watir::Browser.new :edge
# browser.goto 'http://www.apple.com'
# browser.close
#
# browser = Watir::Browser.new :edge
# browser.goto 'http://www.apple.com'
# browser.close
