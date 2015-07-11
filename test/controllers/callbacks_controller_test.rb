require 'test_helper'

class CallbacksControllerTest < ActionController::TestCase
  test "should get instagram" do
    get :instagram
    assert_response :success
  end

end
