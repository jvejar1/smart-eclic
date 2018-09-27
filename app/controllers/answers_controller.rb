class AnswersController < ApplicationController
  before_action :set_question, only:[:new]

  def new

  end

  private
  def set_question
    @question=Question.find(params.require(:question_id))
  end

  def bad_selection

  end

  def confirm_bad_selection



  end
end
