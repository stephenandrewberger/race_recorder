class Runner < ActiveRecord::Base
  has_many :photos
  has_many :race_results
  has_many :races, :through => :race_results
  has_many :states, :through => :races

  # - name: must be present
  validates :name, :presence => true
end
