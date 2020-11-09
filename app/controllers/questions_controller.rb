class QuestionsController < ApplicationController

    # if message = I am going to work
    # return 
      # Great!
    # if message is a question mark ?
    # return
      # Silly question, get dressed and go to work!.
    # sinon
    # return 
      # I don't care, get dressed and go to work!

  def ask
  end

  def answer
    @imput = params[:question]
    if @imput == "I am going to work"
      @answer_computer = "Great!"
    elsif @imput.include? "?"
      @answer_computer = "Silly question, get dressed and go to work!"
    else
      @answer_computer = "I don't care, get dressed and go to work!"
    end
  end
end
