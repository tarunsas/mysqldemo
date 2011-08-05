class Customer < ActiveRecord::Base
  has_many :users, :dependent => :destroy
end
