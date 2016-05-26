class Skill < ActiveRecord::Base
	belongs_to :user

	validates :skill, presence: true
	validates :level, presence: true,
					  numericality: {greater_than_or_equal_to: 1,
					  				less_than_or_equal_to: 10}
end
