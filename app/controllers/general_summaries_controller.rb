class GeneralSummariesController < ApplicationController

  before_action :set_tab_name, only:[:index]
  def index

    @activities=Activity.all

    @students=Course.first.users

  end

  private
  def set_tab_name
    @tab_name=params[:tab_name]
    if @tab_name.nil?
       @tab_name="notas"
    end
  end
end
