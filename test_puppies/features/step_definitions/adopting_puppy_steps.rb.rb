Given(/^I am on the puppy adoption site$/) do
  @browser.goto "http://puppies.herokuapp.com"
end

When(/^I click the first View Details button$/) do
  @browser.button(value: 'View Details', index: 0).click
end

And(/^I click the Adopt Me button$/) do
  @browser.button(value: 'Adopt Me!').click
  @cart = ShoppingCartPage.new(@browser)
end

And(/^I click the Complete the Adoption button$/) do
  @cart.proceed_to_checkout
end

And(/^I enter "([^"]*)" in the name field$/) do |name|
  @browser.text_field(id: 'order_name').set(name)
end

And(/^I enter "([^"]*)" in the address field$/) do |address|
  @browser.textarea(id: 'order_address').set(address)
end

And(/^I enter "([^"]*)" in the email field$/) do |email|
  @browser.text_field(id: 'order_email').set(email)
end

And(/^I select "([^"]*)" from the pay with dropdown$/) do |pay_type|
  @browser.select_list(id: 'order_pay_type').select(pay_type)
end

And(/^I click the Place Order button$/) do
  @browser.button(value: 'Place Order').click
end

Then(/^I should see "([^"]*)"$/) do |expected|
  expect(@browser.text).to include expected
end

And(/^I click the Adopt Another Puppy button$/) do
  @cart.continue_shopping
end

And(/^I click the second View Details button$/) do
  @browser.button(value: 'View Details', index: 1).click
end

Then /^I should see "([^"]*)" as the name for line item (\d+)$/ do |name, line_item|
  expect(@cart.name_for_line_item(line_item.to_i)).to include name
end

When /^I should see "([^"]*)" as the subtotal for line item (\d+)$/ do |subtotal, line_item|
  expect(@cart.subtotal_for_line_item(line_item.to_i)).to eql subtotal
end

When(/^I should see "([^"]*)" as the cart total$/) do |total|
  expect(@cart.cart_total).to eql total
end
