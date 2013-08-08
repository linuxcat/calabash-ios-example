require 'calabash-cucumber'
require 'calabash-cucumber/operations'

module IosHelper
  # To change this template use File | Settings | File Templates.
    include Calabash::Cucumber::Operations


  def delete_characters(character_length)
    character_length.times do
      keyboard_enter_char 'Delete'
    end
  end


end