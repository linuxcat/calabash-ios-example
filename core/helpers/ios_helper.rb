require 'calabash-cucumber'
require 'calabash-cucumber/operations'

class IosHelper
  # To change this template use File | Settings | File Templates.
  def self.initialize
    @@driver = Calabash::Cucumber::Operations.new()
  end

  def self.delete_characters(character_length)
    character_length.times do
      @@driver.keyboard_enter_char 'Delete'
    end
  end


end