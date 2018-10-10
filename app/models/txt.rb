class Txt < ApplicationRecord
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
end
