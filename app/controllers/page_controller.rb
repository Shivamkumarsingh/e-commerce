class PageController < ApplicationController
	
  def home
  	

  end
  def index
    @products = Product.all 
  end
  def men
    @man = Product.men
    byebug
  end
  def explore
    @p = Product.find(params[:id])
  end
  def add_to_cart
     if user_signed_in?
      @order = Order.new(:product_id => params[:product_id], :user_id => session[:user_id])
    flash[:notice]="Product added to cart"
      
    else
    flash[:notice]="Please login to continue"
      redirect_to(:controller => 'page', :action => 'explore', :id => params[:id])
      
    end
  end
  private
def product_params
    params.require(:product).permit(:image, :name, :product_type, :sale_price, :cost_price, :number_of_products, :quantity, :category_id,:brand_id)
  end
end
