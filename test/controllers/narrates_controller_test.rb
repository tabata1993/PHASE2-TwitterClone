require 'test_helper'

class NarratesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get narrates_index_url
    assert_response :success
  end

end
