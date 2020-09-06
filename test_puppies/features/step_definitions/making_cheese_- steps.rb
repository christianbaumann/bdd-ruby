Given /^I have no cheese$/ do
  log "I am so sad. I have no cheese :("
end

When /^I press the make cheese button$/ do
  log "There is hope. I hope this machine works"
end

Then /^I should have (\d+) piece of cheese$/ do |num_pieces|
  log "Rejoice! We have #{num_pieces} pieces of cheese."
end

Given(/^I have no Cheese$/) do
  log "I don't have cheese"
end

When(/^I press the make "([^"]*)" cheese button$/) do |type|
  log "Type of cheese: #{type}"
end

Then(/^I should see the "([^"]*)" message$/) do |message|
  log message
end
