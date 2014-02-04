class BlocksController < ApplicationController
  before_action :set_canvas
  before_action :set_block, only: [:show, :edit, :edit_attributes, :update, :destroy, :move_up]
  before_action :which_attribute, only: [:edit_attributes]

  # GET /blocks/new
  def new
    @block = Block.new
    @canvas.blocks << @block
    
    respond_to do |format|
      format.html { redirect_to :root }
    end
  end

  # GET /blocks/1/edit
  def edit
    respond_to do |format|
      format.html { render 'edit', layout: false }
      format.js {}
    end
  end

  def edit_attributes
    respond_to do |format|
      format.html { render 'edit', layout: false }
      format.js {}
    end
  end

  # POST /blocks
  # POST /blocks.json
  def create
    @block = Block.new(block_params)

    respond_to do |format|
      if @block.save
        format.html { redirect_to @block, notice: 'Block was successfully created.' }
        format.json { render action: 'show', status: :created, location: @block }
      else
        format.html { render action: 'new' }
        format.json { render json: @block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blocks/1
  # PATCH/PUT /blocks/1.json
  def update
    respond_to do |format|
      if @block.update(block_params)
        format.html { redirect_to :root, notice: 'Block was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end
  
  def move_up
    @block.move_up!
    redirect_to :root
  end

  # DELETE /blocks/1
  # DELETE /blocks/1.json
  def destroy
    @block.destroy
    respond_to do |format|
      format.html { redirect_to :root }
      format.js {}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_block
      @block = Block.find(params[:id])
    end
    
    def set_canvas
      @canvas = Canvas.first
    end
    
    def which_attribute
      @attribute = params[:attribute].to_s
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def block_params
      params.require(:block).permit(:title, :takeaway, :canvas_id)
    end
end
