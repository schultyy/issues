class Project < ActiveRecord::Base
  attr_accessible :name
  has_many :issues , :conditions => {:status => nil}
end
