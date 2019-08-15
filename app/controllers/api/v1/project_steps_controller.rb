class Api::V1::ProjectStepsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  
  before_action :get_project_step, only: [:show, :update, :destroy]
  
  before_action :get_project, only: [:index, :create]
  
  def index
    @project_steps = @project.project_steps
  end
  
  def show
  end
  
  def create
    @project_step = ProjectStep.new(project_step_params)
    @project_step.project = @project
    if @project_step.save
      @project.save
    else
      render_error
    end
  end
  
  def update
    if @project_step.update(project_step_params)
    else
      render_error
    end
  end
  
  def destroy
    @project_step.destroy
    render json: { message: "project_step was deleted. "}
  end
  
  private
  
  def project_step_params
    params.require(:project_step).permit(:photo_url, :description, :equipment_id, :project_id, :material_id, :quantity, :title)
  end
  
  def get_project
    @project = Project.find(params[:project_id])
  end
  
  def get_project_step
    @project_step = ProjectStep.find(params[:id])
  end
  
  def render_error
    render json: { errors: @project.errors.full_messages }, status: :unprocessable_entity
  end
end