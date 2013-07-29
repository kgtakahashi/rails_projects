class Menter < ActiveRecord::Base
	has_one :image, class_name: "MenterImage", dependent: :destroy


	ACCESSIBLE_ATTRS = [:name, :career, :rate, :password,
		:password_confirmation, :image_attributes ]
		
	attr_accessible *ACCESSIBLE_ATTRS
	attr_accessible *ACCESSIBLE_ATTRS
	attr_accessor :password, :password_confirmation

	accepts_nested_attributes_for :image, allow_destroy: true

	validates :password, presence: { on: :create },
		confirmation: { allow_blank: true }


  def password=(val)
  	if val.present?
  		self.hashed_password = BCrypt::Password.create(val)
  	end
  	@password = val
	end
end
