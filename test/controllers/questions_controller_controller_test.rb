require 'test_helper'

class QuestionsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get open" do
    get questions_controller_open_url
    assert_response :success
  end

  test "should get answer" do
    get questions_controller_answer_url
    assert_response :success
  end

  test "should get question" do
    get questions_controller_question_url
    assert_response :success
  end

  test "should get close" do
    get questions_controller_close_url
    assert_response :success
  end

end
