class Api::V1::EquipmentsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  
  before_action :get_equipment, only: [:show, :update, :destroy]
  
  def index
    @equipments = Equipment.all
  end
  
  
  private
  
  
end