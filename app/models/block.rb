class Block < ActiveRecord::Base
  belongs_to :canvas
  has_many :points
  
  before_create :define_position, :adding_default_points
  
  def formatted_title
    self.title.blank? ? "Inserir título do bloco" : self.title
  end
  
  def formatted_takeaway
    self.takeaway.blank? ? "Inserir take-away" : self.takeaway
  end
  
  def define_position
    self.position = (Block.maximum(:position) || 0) + 1
  end
  
  def adding_default_points
    3.times do
      self.points << Point.new
    end
  end
  
  def move_up!
    previous = previous_block
    unless previous.nil?
      self.position = previous.position
      previous.update(position: self.position_was)
      self.save
    end
  end
  
  def previous_block
    previous = Block.order(position: :desc).where("position < :pstn", {pstn: self.position}).take
  end
end
