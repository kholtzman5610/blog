class OrdersController <ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :catch_not_found
  before_action :set_customer

  def create
    @order = @customer.orders.create(order_params)
    redirect_to @customer
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
  @order = Order.find(params[:id])
  @order.update(order_params)
  redirect_to @customer
end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to @customer
  end

    private

    def order_params
      params.require(:order).permit(:product_name, :product_count)
    end

    def set_customer
      @customer = Customer.find(params[:customer_id])
    end

    def catch_not_found(e)
      Rails.logger.debug("We had a not found exception.")
      flash.alert = e.message
      redirect_to @customer
    end
  end
