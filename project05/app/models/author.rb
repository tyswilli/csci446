class Author < ActiveRecord::Base
  validates :name, presence: true
  has_attached_file :photo, 
    :url => "/assets/products/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  has_many :articles
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  validate :no_pat
  def no_pat
    if (name.match(/(pat)/i))
      errors.add(:author, " name can't include Pat")
    end
  end
end
