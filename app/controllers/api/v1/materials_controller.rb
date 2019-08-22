class Api::V1::MaterialsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  
  before_action :get_material, only: [:show, :update, :destroy]
  
  before_action :get_project, only: [:index, :create]
  
  def index
    @materials = @project.materials
  end
  
  def show
  end
  
  def create
    @material = Material.new(material_params)
    @material.project = @project
    if @material.save
      @project.save
    else
      render_error
    end
  end
  
  def update
    if @material.update(material_params)
    else
      render_error
    end
  end
  
  def destroy
    @material.destroy
    render json: { message: "material was deleted. "}
  end
  
  private
  
  def material_params
    params.require(:material).permit(:project_name, :name, :project_id)
  end
  
  def get_project
    @project = Project.find(params[:project_id])
  end
  
  def get_material
    @material = Material.find(params[:id])
  end
  
  def render_error
    render json: { errors: @material.errors.full_messages }, status: :unprocessable_entity
  end
end