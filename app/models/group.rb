class Group < ActiveRecord::Base
  attr_accessible :name, :owner_id, :info
end
