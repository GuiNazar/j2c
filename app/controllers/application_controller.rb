class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :set_agenda, only: [:index]
  
  def index
  end
  
  def define_agenda
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda
      @agendas = params[:agendas]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:canvas).permit(:title, subjects_attributes: [:id, :title, :takeaway, :_destroy])
    end
end
