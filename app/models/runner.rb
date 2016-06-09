class Runner < ActiveRecord::Base
  has_many :photos
  has_many :race_results

  # - name: must be present
  validates :name, :presence => true
end
