class Representative <ActiveRecord::Base
	validates :name, :presence => true
	validates :party, :presence => true
	belongs_to :state
end
