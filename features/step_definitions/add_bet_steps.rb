bet = BetAppUi.new()

When(/^I tap the bet book$/) do
  bet.open_bet_book
end

Then(/^the book opens and I am taken to the bet page$/) do
  bet.is_bet_screen?.should == true
  @current_bets = bet.get_no_of_bets
  puts @current_bets
end

When(/^I add a new bet for \$(\d+) and click the save button$/) do |arg|
  bet.make_bet(arg, "Adding my bet")
end

Then(/^The bet is added to my bet book$/) do
  bet.is_bet_screen?.should == true
  puts bet.get_no_of_bets
  bet.get_no_of_bets.should == @current_bets  + 1
end