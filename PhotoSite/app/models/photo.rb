class Photo < ActiveRecord::Base
	has_many :tags, :dependent => :destroy
    has_attached_file :path, :styles => {:thumb => "100x100>", :small => "150x150>", :medium => "300x300>"}

validates_attachment_presence :path
validates_attachment_size :path, :less_than => 5.megabytes
validates_attachment_content_type :path, :content_type => ['image/jpeg', 'image/png']

end
