class Well < ActiveRecord::Base
  belongs_to :project
  has_many :measurements
  has_many :cycles
end
