class Api::V1::MakerspacesController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  
  before_action :get_makerspace, only: [:show, :update, :destroy]
  
  def index
    @makerspaces = Makerspace.all
  end
  
  def show
    # render json: @makerspace
  end
  
  def create
    @makerspace = Makerspace.new(makerspace_params)
    if @makerspace.save
      # render :show
    else
      render_error
    end
  end
  
  def update
    if @makerspace.update(makerspace_params)
      # render json: @makerspace
    else
      render_error
    end
  end
  
  def destroy
    @makerspace.destroy
    render json: { message: "makerspace was deleted. "}
  end
  private
  
  def makerspace_params
    params.require(:makerspace).permit(:name, :logo, :location, :address, :phone_number, :email, :description, :photo_url)
  end
  
  def get_makerspace
    @makerspace = Makerspace.find(params[:id])
  end
  
  def render_error
    render json: { errors: @makerspace.errors.full_messages }, status: :unprocessable_entity
  end
  
end