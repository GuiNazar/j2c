class Canvas < ActiveRecord::Base
  has_many :subjects
  
  validates_presence_of :title
  
  accepts_nested_attributes_for :subjects, allow_destroy: true
end
