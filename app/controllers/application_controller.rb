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
      @agendas = []
      params[:agendas].each do |agenda|
        @agendas << OpenStruct.new(agenda[1])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:agendas).permit(:title)
    end
end
