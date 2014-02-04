class Block < ActiveRecord::Base
  belongs_to :canvas
  
  before_create :define_position
  
  def define_position
    self.position = (Block.maximum(:position) || 0) + 1
  end
  
  def move_up!
    current_position = self.position
    replacing = Block.order(position: :desc).where("position < :pstn", {pstn: current_position}).take
    unless replacing.nil?
      self.position = replacing.position
      replacing.position = current_position
      self.save
      replacing.save
    end
  end
end
