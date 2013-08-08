require 'calabash-cucumber'

class IosHelper
  # To change this template use File | Settings | File Templates.
  def self.initialize
    include Calabash::Cucumber::Operations
  end

  def self.delete_characters(character_length)
    character_length.times do
      keyboard_enter_char 'Delete'
    end
  end


end