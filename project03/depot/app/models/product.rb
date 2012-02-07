class Product < ActiveRecord::Base

has_many :line_items

before_destroy :ensure_not_referenced_by_any_line_item
validates :title, :description, :img_url, presence: true
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :title, uniqueness: true
validates :img_url, allow_blank:true, format: {
	with: %r{\.(gif|png|jpg)$}i,
	message: 'must be a url for GIF, JPG, or PNG image'
	}
	
	
	private 
	#ensure that there are no line items referencing this product
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end
end
