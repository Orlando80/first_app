class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :content, :length => {:maximum => 140, :minimum => 5 }
end
