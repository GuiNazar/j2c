class PointsController < ApplicationController
  before_action :set_point, only: [:show, :edit, :update, :destroy]
  before_action :set_block, only: [:new, :edit, :update, :destroy]

  # GET /points
  # GET /points.json
  def index
    @points = Point.all
  end

  # GET /points/1
  # GET /points/1.json
  def show
  end

  # GET /points/new
  def new
    @point = Point.create
    @block.points << @point
    
    respond_to do |format|
      format.html { redirect_to :root }
      format.js { render "keypoints_modified" }
    end
  end

  # GET /points/1/edit
  def edit
  end

  # POST /points
  # POST /points.json
  def create
    @point = Point.new(point_params)

    respond_to do |format|
      if @point.save
        format.html { redirect_to @point, notice: 'Point was successfully created.' }
        format.json { render action: 'show', status: :created, location: @point }
      else
        format.html { render action: 'new' }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /points/1
  # PATCH/PUT /points/1.json
  def update
    respond_to do |format|
      if @point.update(point_params)
        format.js {}
      else
        format.html { render action: 'edit' }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /points/1
  # DELETE /points/1.json
  def destroy
    @point.destroy
    respond_to do |format|
      format.html { redirect_to :root }
      format.js { render "keypoints_modified" }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point
      @point = Point.find(params[:id])
    end
    
    def set_block
      @block = Block.find(params[:block_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def point_params
      params.require(:point).permit(:content, :block_id)
    end
end
