class Api::V1::UsersController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  
  before_action :set_user, only: [:show, :update, :destroy]
  
  def index
    @users = User.all
  end
  
  def show
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      render :show, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end
  
  def update
    if @user.update(user_params)
      render :show, status: :ok, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end
  
  def destroy
    @user.destroy
  end
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:open_id, :name, :photo_url, :phone_number, :email)
  end
end
