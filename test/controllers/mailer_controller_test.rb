require 'test_helper'

class MailerControllerTest < ActionController::TestCase
  test "should get mailing" do
    get :mailing
    assert_response :success
  end

end
