class Bullet < ActiveRecord::Base
  belongs_to :subject
  
  validates_presence_of :text, :subject
end
