class Product < ActiveRecord::Base
validates :title, :description, :img_url, presence: true
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :img_url, allow_blank:true, format: {
	with: %r{\.(gif|png|jpg)$}i,
	message: 'must be a url for GIF, JPG, or PNG image'
	}
end
