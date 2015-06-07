class Statuses::ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project

  def create
    @status = @project.status.new status_params
    @status.user = current_user.id

    if @status.save
      
      redirect_to project_path(@project, anchor: "status_#{@status.id}"), notice: "Successfully posted!"
    else
      redirect_to @project, alert: "Unable to save your status"
    end
  end

  private

    def set_project
      @project = Project.find(params[:project_id])
    end

    def status_params
      params.require(:status).permit(:description)
    end
end
