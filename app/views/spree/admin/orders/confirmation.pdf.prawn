@shipment = @order.shipment
@order_canceled = params[:orderstate] == "canceled"
@order_confirmation = true

render :partial => "spree/admin/shared/print"