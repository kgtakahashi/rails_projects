class Menter < ActiveRecord::Base
	has_one :image, class_name: "MenterImage", dependent: :destroy

	attr_accessible :name, :career, :rate
	attr_accessible :name, :career, :rate, as: :admin
end
