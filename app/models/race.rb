class Race < ActiveRecord::Base
  has_many :race_results
  has_many :photos
  belongs_to :state
  has_many :runners, :through => :race_results

  # - name: must be present
  validates :name, :presence => true

  # - date: must be present
  validates :date, :presence => true

  # - city: must be present
  validates :city, :presence => true

  # - city: must be present
  validates :state, :presence => true

end
