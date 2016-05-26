class Employee < ActiveRecord::Base
	belongs_to :user

	validates :work_email, presence: true
	validates :position,   presence: true
	validates :employer,   presence: true
end
