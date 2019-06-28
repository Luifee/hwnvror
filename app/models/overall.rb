class Overall < ApplicationRecord
	validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	validates_format_of :name, :with => /^\S+$/g
end
