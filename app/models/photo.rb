class Photo < ActiveRecord::Base
  belongs_to :runner
  belongs_to :race


end
