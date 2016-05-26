class Employee < ActiveRecord::Base
	has_many :endorsements
	
	belongs_to :user

	validates :work_email, presence: true
	validates :position,   presence: true
	validates :employer,   presence: true
end
