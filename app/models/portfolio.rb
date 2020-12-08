class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	#class method - finds portfolios that have subtitle of angular
	def self.angular
		where(subtitle: 'Angular')
	end

	#Same function as above - lambda function
	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

	#runs after .new is called
	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "https://place-hold.it/600x400"
		self.thumb_image ||= "https://place-hold.it/350x200"

	end
end
