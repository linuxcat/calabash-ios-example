require 'calabash-cucumber'


class BetAppUi
  # To change this template use File | Settings | File Templates.
  include Calabash::Cucumber::Operations
  def initialize

  end



  def open_bet_book
    tap('bookWithRibbon.png')
    wait_for_none_animating
    wait_for_elements_exist(["ImageView id:'plusSign'"], :timeout => 5)
  end

  def make_bet(bet_amount, description)
    puts "debug 1"
    tap('plusSign')

    puts "debug 2"

    wait_for_elements_exist(["Button marked:'paperPlusSign'"], :timeout => 5)
    puts "debug 3"

    tap('paperPlusSign')

    10.times do
      keyboard_enter_char 'Delete'
    end

    keyboard_enter_text(description)
    tap('Amount ')
    keyboard_enter_text(bet_amount)
    tap 'Done'
  end

  def is_bet_screen?
    return query('Label')[1]['label'] == 'Bets'
  end

  def get_bets

  end

  def close_bet_book

  end



end