class AddAttachmentPictureToSlides < ActiveRecord::Migration[5.1]
  def self.up
    change_table :slides do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :slides, :picture
  end
end
