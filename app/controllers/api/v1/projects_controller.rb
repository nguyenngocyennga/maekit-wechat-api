class Api::V1::ProjectsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  
  before_action :get_project, only: [:show, :update, :destroy]
  
  def index
    @projects = Project.all
  end
  
  def show
    # render json: @project
  end
  
  def create
    @project = Project.new(project_params)
    if @project.save
      # render :show
    else
      render_error
    end
  end
  
  def update
    if @project.update(project_params)
      # render json: @project
    else
      render_error
    end
  end
  
  def destroy
    @project.destroy
    render json: { message: "Project was deleted. "}
  end
  private
  
  def project_params
    params.require(:project).permit(:name, :description, :preparation_time, :level, :photo_url, :materials, :instructions)
  end
  
  def get_project
    @project = Project.find(params[:id])
  end
  
  def render_error
    render json: { errors: @project.errors.full_messages }, status: :unprocessable_entity
  end
  
end