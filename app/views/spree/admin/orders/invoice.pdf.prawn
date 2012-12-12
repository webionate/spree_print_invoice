@shipment = @order.shipment
@order_canceled = params[:orderstate] == "canceled"

render :partial => "spree/admin/shared/print"