class Subject < ActiveRecord::Base
  belongs_to :canvas
  has_many :bullets
  
  validates_presence_of :title, :takeaway, :canvas
end
