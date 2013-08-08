Feature: Adding bets
  As an gamble with a problem
  I want to be able to track my bets through the app
  So I can keep track of my gambling debts

Scenario: Adding a bet
  Given I am on the Welcome Screen
  When I tap the bet book
  Then the book opens and I am taken to the bet page
  When I add a new bet for $5 and click the save button
  Then The bet is added to my bet book


