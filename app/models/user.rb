class User < ApplicationRecord
	has_many :photos, dependent: :destroy
	validates :first_name, :last_name, presence: true
	validates :email, uniqueness: true
	validates :password, confirmation: true
	validates :password_confirmation, presence: true

	has_secure_password

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user ? @user.authenticate(params[:password]) : false
	end
end
