class PurchasesController < ApplicationController

  def index
    @purchases = Purchase.all
    render json: @purchases
  end

  def create
    @purchase = Purchase.create(purchase_params)

    render json: @purchase
  end

  private

  def purchase_params
    params.permit(:user_id, :coin_id, :num_of_coins, :price, :time_of_purchase)
  end

end
