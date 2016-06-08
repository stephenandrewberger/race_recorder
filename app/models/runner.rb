class Runner < ActiveRecord::Base
  has_many :photos
  has_many :race_results


end
