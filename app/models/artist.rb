class Artist < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :artworks

  def fullname
  	"#{first_name} #{last_name}"
  end

   def image_url
    artwork.picture.url(:medium)
  end
end
