class State < ActiveRecord::Base
has_many :races

# - name: must be present
validates :name, :presence => true
end
