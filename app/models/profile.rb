class Profile < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :avatar, 
                    :styles => { :medium => "300x300>", :thumb => "100x100>"},
                    :default_url => "https://www.attendit.net/images/easyblog_shared/July_2018/7-4-18/b2ap3_large_totw_network_profile_400.jpg" 
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end