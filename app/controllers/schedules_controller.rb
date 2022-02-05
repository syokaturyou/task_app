class SchedulesController < ApplicationController
  
  def index
    @schedules = Schedule.all
    @schedules_count = Schedule.count
  end
  
  def show
    @schedule = Schedule.find(params[:id])
  end
  
  def new
    @schedule = Schedule.new
  end
  
  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      flash[:notice] = "スケジュールを新規登録しました"
      redirect_to :schedules
    else
      render "new"
    end
  end
  
  def edit
    @schedule = Schedule.find(params[:id])
  end
  
  def update
     @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :schedules
    else
      render "edit"
    end
  end
  
  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :schedules
  end
  
  private
  def schedule_params
    params.require(:schedule).permit(:title, :startdate, :enddate, :checkend, :schedulememo)
  end
  
end
