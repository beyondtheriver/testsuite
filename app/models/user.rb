class User < ActiveRecord::Base
   validates_uniqueness_of :username
   validates :username, length: {in: 4..30}
  has_many :posts
  has_many :comments
end
