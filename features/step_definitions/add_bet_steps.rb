bet = BetAppUi.new()

When(/^I tap the bet book$/) do
  bet.open_bet_book
end

Then(/^the book opens and I am taken to the bet page$/) do
  bet.is_bet_screen? == true
end

When(/^I tap the add bet button$/) do

end

Then(/^I can enter a new bet$/) do
end

When(/^I add a new bet for $(\d+) and click the save button$/) do |arg|
  bet.make_bet(5, "Adding my bet")
end

Then(/^The bet is added to my bet book$/) do
  pending
end