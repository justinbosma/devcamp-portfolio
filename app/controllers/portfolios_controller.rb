class PortfoliosController < ApplicationController
	#Want to list out number of items - list out all portfolio items
	#Calling Model - making available to the view
	def index
		@portfolio_items = Portfolio.all
	end

end
