class Overall < ApplicationRecord

	attr_accessor :activation_token
	before_save :downcase_email
#	before_create :create_activation_digest

	validates_presence_of :name, :email, :birthday, :password, :password_confirmation
	validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	validates :password, confirmation: {case_sensitive: true }

	private
	def downcase_email
		self.email = email.downcase
	end

#	def create_activation_digest
#		self.activation_token = Overall.new_token
#		self.activation_digest = Overall.digest(activation_token)
#	end
end
