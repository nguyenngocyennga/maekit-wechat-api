class Api::V1::BookingsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  
  before_action :set_booking, only: [:show, :update, :destroy]
  
  before_action :get_user, only: [:index, :create]
  
  before_action :get_project, only: [:create]
  
  before_action :get_makerspace, only: [:create]
  
  def index
    @bookings = @user.bookings
  end
  
  def show
  end
  
  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.makerspace = @makerspace
    @booking.project = @project
    
    
    if @booking.save
      @user.save
      @makerspace.save
      @project.save
    else
      render_error
    end
  end
  
  def update
    if @booking.update(booking_params)
      
    else
      render_error
    end
  end
  
  def destroy
    @booking.destroy
  end
  
  private
  def set_booking
    @booking = Booking.find(params[:id])
  end
  
  def booking_params
    params.require(:booking).permit(:user_id, :makerspace_id, :project_id, :name, :phone_number, :email, :number_students, :from_date, :to_date, :about_kids, :other_message)
  end
  
  def get_user
    @user = User.find(booking_params[:user_id])
  end
  
  def get_project
    @project = Project.find(booking_params[:project_id])
  end
  
  def get_makerspace
    @makerspace = Makerspace.find(booking_params[:makerspace_id])
  end
  
  def render_error
    render json: { errors: @booking.errors.full_messages }, status: :unprocessable_entity
  end
end
