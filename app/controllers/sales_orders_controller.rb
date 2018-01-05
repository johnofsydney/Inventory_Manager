class SalesOrdersController < ApplicationController

  def index
    @sales_orders = SalesOrder.all
  end

  def new
    @sales_order = SalesOrder.new
  end

  def create
    sales_order = SalesOrder.create sales_order_params
    if sales_order.save
      redirect_to sales_order
    else
      redirect_to root
      # later we'll make a better landing page for failed save action.
    end
  end


  def edit
    @sales_order = SalesOrder.find params[:id]
  end

  def update
    sales_order = SalesOrder.find params[:id]
    sales_order.update sales_order_params
    redirect_to sales_order
  end


  def show
    @sales_order = SalesOrder.find_by :id => params[:id]
  end

  def destroy
    sales_order = SalesOrder.find params[:id]
    sales_order.destroy
    redirect_to sales_order_path
  end

  private
  def sales_order_params
    params.require(:sales_order).permit(:customer_PO_number)
  end

end
