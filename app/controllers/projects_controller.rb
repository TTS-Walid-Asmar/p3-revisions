class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, except: [:index, :new, :create]

  def index
    @projects = Project.all
  end

  def show
    @status = Status.new
  end

  def new
    @project = Project.new
    @project.statuses.new

  end

  def create
    @project = current_user.projects.new project_params

    if @project.save
      redirect_to @project
    else
      render action: :new
    end
  end

  private

    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
        params.require(:project).permit(:title, :description, :startdate, statuses_attributes: [:description])
    end
end
