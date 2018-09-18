class AnswersController < ApplicationController
  before_action :set_question, only:[:new]

  def new

  end

  private
  def set_question
    @question=Question.find(params.require(:question_id))
  end
end
