class Article < ActiveRecord::Base

  validates :title, :author, :body, presence: true
  validates :author, :exclusion => { :in => "/pat/i", :message => "%{value} contains Pat. We don't accept this name." }
end
