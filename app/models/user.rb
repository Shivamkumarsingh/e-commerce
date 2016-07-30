class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :orders
	has_many :wishlist
	after_save :new_signup

	def new_signup
		UserMailer.new_user(self)
	end
end
