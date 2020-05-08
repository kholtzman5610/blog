class OrdersController <ApplicationController
  before_action :set_customer

  def create
    @order = @customer.orders.create(order_params)
    redirect_to @customer
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(param[:id])
    @order.update(order_params)
    redirect_to @customer
  end

  def destory
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to @order
  end

    private

    def order_params
      params.require(:order).permit(:product_name, :product_count)
    end

    def set_customer
      @customer = Customer.find(params[:customer_id])
    end
  end
