require_relative '../helpers/ios_helper'


class BetAppUi
  # To change this template use File | Settings | File Templates.
  include Calabash::Cucumber::Operations
  include IosHelper

  def open_bet_book
    tap('bookWithRibbon.png')
    wait_for_none_animating
    wait_for_elements_exist(["ImageView id:'plusSign'"], :timeout =>5)
  end

  def make_bet(bet_amount, description)
    tap('plusSign')
    wait_for_elements_exist(["Button marked:'paperPlusSign'"], :timeout => 5)
    tap('paperPlusSign')
    clear_form_text
    keyboard_enter_text(description)
    tap('Amount ')
    keyboard_enter_text(bet_amount)
    tap 'Done'
    tap 'tableOfContentsBackButton'
  end

  def is_bet_screen?
    if query("Label label marked:'Table Of'").count == 1
      return true
    end
  end

  def get_no_of_bets
    return query('TableViewCell').count
  end

end
