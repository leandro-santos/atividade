class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name
  validates_presence_of :email, :first_nome, :last_name
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\S])@/i, :allow_blank => true
end
