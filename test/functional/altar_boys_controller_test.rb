require 'test_helper'

class AltarBoysControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    AltarBoy.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    AltarBoy.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to altar_boys_url
  end
end
