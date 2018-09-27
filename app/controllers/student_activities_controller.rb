class StudentActivitiesController < ApplicationController
  before_action :set_activity, only:[:show,:groups,:evaluation,:update_question_evaluation,:question_evaluation]
  before_action :set_question, only:[:question_evaluation,:update_question_evaluation]
  before_action :set_student, only: [:evaluation,:question_evaluation,:update_question_evaluation]
  def show

  end

  def index

  end
  def update_question_evaluation
    user_prelab=UserPrelab.where(user_id:@student.id,prelab_id:@activity.prelab.id)
    QuestionTextAnswer.where(user_prelab_id:user_prelab.id,question:question)

  end

  def question_evaluation


  end
  def evaluation
    @user_lab = UserLab.find_by(lab_id: @lab.id,user_id:@student.id)
  end

  def groups


  end

  private
  def set_question
    @question=Question.find(params[:question_id])
  end
  private
  def set_activity

    @activity=Activity.find(params[:id])
    @lab=@activity.lab
  end

  private
  def set_student
    @student=User.find(params[:student_id])
  end
end
