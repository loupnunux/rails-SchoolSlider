class Author < ApplicationRecord
  has_attached_file :picture, styles: { medium: "533x300>", thumb: "177x100#" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
