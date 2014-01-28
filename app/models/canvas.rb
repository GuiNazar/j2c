class Canvas < ActiveRecord::Base
  has_many :subjects
  
  validates_presence_of :title
end
