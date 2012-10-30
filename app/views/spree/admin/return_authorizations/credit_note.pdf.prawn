@order = @return_authorization.order
@shipment = @order.shipment
@credit_note = true

render :partial => "spree/admin/shared/print"