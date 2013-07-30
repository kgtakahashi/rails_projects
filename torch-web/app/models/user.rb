class User < ActiveRecord::Base
  attr_accessible :name, :age, :profile, :student, :password,
  	:password_confirmation
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
