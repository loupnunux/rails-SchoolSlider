class AddAttachmentPictureToAuthors < ActiveRecord::Migration[5.1]
  def self.up
    change_table :authors do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :authors, :picture
  end
end
