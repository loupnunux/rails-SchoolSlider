class AddAttachmentPictureToLearns < ActiveRecord::Migration[5.1]
  def self.up
    change_table :learns do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :learns, :picture
  end
end
