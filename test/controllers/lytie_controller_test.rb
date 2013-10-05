require 'test_helper'

class LytieControllerTest < ActionController::TestCase
  test "should get index_prod" do
    get :index_prod
    assert_response :success
  end

end
