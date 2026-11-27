require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "ask page renders" do
    get ask_url
    assert_response :success
  end

  test "a question gets the silly-question reply" do
    get answer_url, params: { question: "Can I stay in bed?" }
    assert_match "Silly question", response.body
  end

  test "a statement gets the don't-care reply" do
    get answer_url, params: { question: "I am tired" }
    assert_match "I don&#39;t care", response.body
  end

  test "going to work gets praise" do
    get answer_url, params: { question: "I am going to work" }
    assert_match "Great!", response.body
  end

  test "answer without a question does not crash" do
    get answer_url
    assert_response :success
  end
end
