require 'test_helper'

class AltarBoyTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert AltarBoy.new.valid?
  end
end
