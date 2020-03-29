class QuestionsController < ApplicationController
  def ask
    # blah
  end

  def answer
    @answer = params
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
