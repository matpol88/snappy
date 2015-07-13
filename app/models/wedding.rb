class Wedding < ActiveRecord::Base

	validates_presence_of :name
	validates_presence_of :email
	validates_presence_of :date
	validates_presence_of :user_id
	belongs_to :user
	
end
