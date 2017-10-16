class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    ordered_reviews
    @review = Review.new
    @user_reviews = Review.where(user_id: current_user)
  end

  private
  def ordered_reviews
    @ordered_reviews = @product.reviews.order(created_at: :desc)
  end

end
