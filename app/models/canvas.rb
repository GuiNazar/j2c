class Canvas < ActiveRecord::Base
  has_many :blocks, order: :position
  
  before_create :create_block
  
  def create_block
    if self.blocks.length == 0
      self.blocks << Block.create(position: 1)
    end
  end
end
