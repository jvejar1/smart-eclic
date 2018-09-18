class StudentSummariesController < ApplicationController

  before_action :set_filters, only:[:show]
  before_action :set_student, only:[:show]

  def index

  end

  def show


  end

  private
  def set_filters
    @activity_id=params[:activity].to_i
    @activity_type_int=params[:activity_type].to_i
  end
  private
  def set_student
    @student=User.find(params[:id])
  end
end
