class SampleCat < ActiveRecord::Base
  attr_accessible :cat_name, :description, :featured
  has_many :samples
  validates_presence_of :cat_name
end
