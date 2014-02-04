class CanvasesController < ApplicationController
#  before_action :set_canvas, only: [:show, :edit, :update, :destroy]
  before_action :set_canvas, only: [:show, :edit, :update]
  
  # GET /canvases/1
  # GET /canvases/1.json
  def show
  end

  # GET /canvases/1/edit
  def edit
  end

  # PATCH/PUT /canvases/1
  # PATCH/PUT /canvases/1.json
  def update
    respond_to do |format|
      if @canvas.update(canvas_params)
        format.js {}
      else
        format.html { render action: 'edit' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canvas
      @canvas = Canvas.first || Canvas.create
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def canvas_params
      params.require(:canvas).permit(:title)
    end
end
