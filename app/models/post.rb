class Post < ActiveRecord::Base
  belongs_to :fthread
  has_many :comments
end
