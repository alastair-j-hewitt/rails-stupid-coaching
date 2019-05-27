class QuestionsController < ApplicationController

  def answer
    # @questions = params["question"]
    @question = params[:question]
    if @question != "I am going to work" && @question[-1] != "?"
      @reply = "I don't care, get dressed and go to work!"
    elsif @question != "I am going to work" && @question[-1] == "?"
      @reply = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work"
      @reply = "Great!"
    end
  end

  def ask
    @question
  end

  # def create
  #   render @reply
  # end
end
