class Endorsement < ActiveRecord::Base
	belongs_to :employee
	belongs_to :skill
	belongs_to :user
end
