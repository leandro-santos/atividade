class Post < ActiveRecord::Base
  attr_accessible :body, :excerpt, :title, :author_id

  has_many :comments, :dependent => :destroy
  has_and_belongs_to_many :categories
 # has_many :posts, foreign_key: "author_id"
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"

  validates_presence_of :title, :body, :author
  validates_associated :author

end
