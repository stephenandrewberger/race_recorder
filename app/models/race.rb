class Race < ActiveRecord::Base
  has_many :race_results
  has_many :photos
  belongs_to :state
  has_many :runners, :through => :race_results


end
