class Menter < ActiveRecord::Base
	has_one :image, class_name: "MenterImage", dependent: :destroy

	attr_accessible :name, :career, :rate, :password, :password_confirmation
	attr_accessible :name, :career, :rate, as: :admin
	attr_accessor :password, :password_confirmation

	validates :password, presence: { on: :create },
		confirmation: { allow_blank: true }


  def password=(val)
  	if val.present?
  		self.hashed_password = BCrypt::Password.create(val)
  	end
  	@password = val
	end
end
