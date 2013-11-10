class Photo < ActiveRecord::Base
    has_attached_file :path, :styles => {:small => "150x150>"},
    				  :url  => "assets/images/:id/:style/:basename.:extension",
    				  :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"

validates_attachment_presence :path
validates_attachment_size :path, :less_than => 5.megabytes
validates_attachment_content_type :path, :content_type => ['image/jpeg', 'image/png']

end
