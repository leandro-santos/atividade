class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :author, :body, :email, :url
end
