class Guest < ActiveRecord::Base

  validates_presence_of :name
  validates_numericality_of :head_count
end
