class Overall < ApplicationRecord

	validates_presence_of :name, :email, :birthday, :password, :password_confirmation
	validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	validates :password, confirmation: {case_sensitive: true }
end
