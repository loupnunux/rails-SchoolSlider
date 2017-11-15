class Art < ApplicationRecord
  has_attached_file :picture, styles: { full: "1920x1080>", large: "1066x600>", medium: "533x300>", thumb: "177x100#" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
