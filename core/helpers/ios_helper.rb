require 'calabash-cucumber'
require 'calabash-cucumber/operations'

module IosHelper
  # To change this template use File | Settings | File Templates.
    include Calabash::Cucumber::Operations





  def clear_form_text
    string_length = query('TextView', 'text').first.size
    string_length.times do
      keyboard_enter_char 'Delete'
    end
  end

  def delete_characters(string_length)
    string_length.times do
      keyboard_enter_char 'Delete'
    end
  end


end