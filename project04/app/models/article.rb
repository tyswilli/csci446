class Article < ActiveRecord::Base

  validates :title, :author, :body, presence: true
  validate :no_pat
  def no_pat
    if (author.match(/(pat)/i))
      errors.add(:author, " name can't include Pat")
    end
  end
 
end
