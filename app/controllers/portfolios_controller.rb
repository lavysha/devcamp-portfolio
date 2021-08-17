class PortfoliosController < ApplicationController
  def index
   @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle,:body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path , notice: "Portfolio was successfully created." }
        #format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        #format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end 
end
