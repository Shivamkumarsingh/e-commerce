class ShopController < ApplicationController
	 before_filter :authenticate_user!
	def men
		@man = Product.men
    end
    def women
    @woman = Product.women
    end
    def kids
    @kids = Product.kids
    end
    def books
    @books = Product.books
    end
    def sports
    @sports = Product.sports
    end
    def electronics
    @electronics = Product.electronics
    end

  
  
  private
def product_params
    params.require(:product).permit(:image, :name, :product_type, :sale_price, :cost_price, :number_of_products, :quantity, :category_id,:brand_id)
  end

end
