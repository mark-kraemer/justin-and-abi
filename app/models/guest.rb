class Guest < ActiveRecord::Base

  validates_presence_of :name
  validates_numericality_of :head_count, allow_nil: true

  scope :attending, -> { where(attending: true) }
  scope :not_attending, -> { where(attending: false) }

  def self.attending_head_count
    attending.sum(:head_count)
  end
end
