class Sample < ActiveRecord::Base
  has_attached_file :pic, :styles => { :tiny => "25x25#", :small => "72x72#", :medium => "250x200#", :large => "400"}  
  attr_accessible :description, :pic, :pic_content_type, :pic_file_name, :pic_file_size, :sample_cat_id, :title, :url, :sample_cat
  belongs_to :sample_cat
  validates_presence_of :title
  
  scope :web, where(:sample_cat_id => 1)
  scope :print, where(:sample_cat_id => 2)
  scope :branding, where(:sample_cat_id => 3)
  
end
