class Fthread < ActiveRecord::Base
  belongs_to :forum
  has_many :posts
  has_many :comments
end
