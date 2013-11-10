class AddAttachmentPathToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :path
    end
  end

  def self.down
    drop_attached_file :photos, :path
  end
end
