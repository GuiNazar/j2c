class Canvas < ActiveRecord::Base
  has_many :blocks
  
  before_create :create_block
  
  def create_block
    if self.blocks.length == 0
      self.blocks << Block.create
    end
  end
end
