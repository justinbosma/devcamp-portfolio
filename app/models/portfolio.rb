class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	#class method - finds portfolios that have subtitle of angular
	def self.angular
		where(subtitle: 'Angular')
	end

	#Same function as above - lambda function
	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
