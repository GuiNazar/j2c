class Subject < ActiveRecord::Base
  belongs_to :canvas
  has_many :bullets
end
