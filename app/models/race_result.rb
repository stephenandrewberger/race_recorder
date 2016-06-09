class RaceResult < ActiveRecord::Base
  belongs_to :race
  belongs_to :runner

  # - pr: must be present
  validates :pr, :presence => true

  # - time: must be integer between 0 and 21600
validates :time, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 21600 }

end
