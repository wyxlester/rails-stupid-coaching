class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @imported_qns = params[:question]

    if @imported_qns == "I am going to work"
      @answer = "Great!"
    elsif @imported_qns.end_with?('?')
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
