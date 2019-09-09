class Api::V1::EquipmentsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  
  before_action :get_equipment, only: [:show, :update, :destroy]
  
  def index
    @equipments = Equipment.all
  end
  
  def show
    @scan = params[:query]
    if @scan
      @equipment = Equipment.where(scan: @scan)
    else
      @equipment
    end
  end
  
  private
  
  def get_equipment
    @equipment = Equipment.find(params[:id])
  end  
  
end