class Recipe < ActiveRecord::Base
   has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :gallery => "400x400>" }, :default_url => "/images/:style/missing.png"
   validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
<<<<<<< HEAD
   has_many :likes
=======
  has-one :like
>>>>>>> dev1
end
