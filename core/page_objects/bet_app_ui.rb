require 'calabash-cucumber'


class BetAppUi
  # To change this template use File | Settings | File Templates.

  def initialize

  end



  def open_bet_book
    touch('bookWithRibbon.png')
    wait_for_elements_exist('homeRibbon.png')
  end

  def make_bet(bet_amount, description)
    tap('plusSign')
    wait_for_elements_exist('paperPlusSign')
    tap('paperPlusSign')

    10.times do
      keyboard_enter_char 'Delete'
    end

    keyboard_enter_text(description)
    tap('Amount ')
    keyboard_enter_text('5')
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