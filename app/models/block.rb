class Block < ActiveRecord::Base
  belongs_to :canvas
  
  before_create :define_position
  
  def define_position
    self.position = (Block.maximum(:position) || 0) + 1
  end
end
