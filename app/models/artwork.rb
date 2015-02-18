class Artwork < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  belongs_to :artist

  has_attached_file :image, artworks: {
  thumb: '100x100>',
  square: '200x200#',
  medium: '500x500>',
  }

  has_attached_file :image, :styles => {
    :square => "200x200#",
    :medium => "500x500>",
    :thumb => "100x100>"},
    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates_with AttachmentSizeValidator, :attributes => :image, :less_than => 10.megabytes

  def image_url
    image.url(:medium)
  end

end
