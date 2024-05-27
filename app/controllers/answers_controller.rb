class AnswersController < ApplicationController
  def answer
  end

  def submit_question
    @question = params[:question]
    @response = if @question.strip.end_with?("?")
                  "Silly question, get dressed and go to work!"
                elsif @question.downcase == "i am going to work"
                  "Great!"
                else
                  "I don't care, get dressed and go to work!"
                end
    render :answer
  end
end
