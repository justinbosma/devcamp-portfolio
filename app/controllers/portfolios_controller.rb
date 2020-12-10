class PortfoliosController < ApplicationController
	#Want to list out number of items - list out all portfolio items
	#Calling Model - making available to the view
	def index
		@portfolio_items = Portfolio.all
	end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

	def new
		@portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
	end

  	def create
    	@portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name]))

    	respond_to do |format|
      	if @portfolio_item.save
        	format.html { redirect_to portfolios_path, notice: 'Your Portfolio Item is now live.' }
        	format.json { render :show, status: :created, location: @portfolio_item }
      	else
        	format.html { render :new }
        	format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      	end
    	end
  	end

  	def edit
  		@portfolio_item = Portfolio.find(params[:id])
  	end

  	def update
  		@portfolio_item = Portfolio.find(params[:id])
    	respond_to do |format|
      	if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        	format.html { redirect_to portfolios_path, notice: 'The record was successfully updated.' }
        	format.json { render :show, status: :ok, location: @portfolio_item }
      	else
        	format.html { render :edit }
        	format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      	end
    	end
  	end

  	def show
  		@portfolio_item = Portfolio.find(params[:id])
  	end

  	def destroy
  		#perform the lookup
  		@portfolio_item = Portfolio.find(params[:id])

  		#detroys record
  		@portfolio_item.destroy

  		#redirect
    	respond_to do |format|
      		format.html { redirect_to portfolios_url, notice: 'Record was removed.' }
      	end
  	end  	

end
