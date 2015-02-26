class Artwork < ActiveRecord::Base
  belongs_to :artist

  has_attached_file :image, :styles => {
    :square => "250x250#",
    :medium => "500x500>",
    :thumb => "250x250#"
  },:default_url => "/images/:style/missing.png"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates_with AttachmentSizeValidator, :attributes => :image, :less_than => 10.megabytes

  def image_url
    image.url(:medium)
  end

end
