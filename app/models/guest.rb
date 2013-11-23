class Guest < ActiveRecord::Base

  validates_presence_of :name, :email, :head_count
  validates_numericality_of :head_count
end
