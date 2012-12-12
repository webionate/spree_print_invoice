require 'prawn/layout'

font "Helvetica"

fill_color "000000"

render :partial => "spree/admin/shared/header"

font_size 10

bounding_box [20,650], :width => 540, :height => 540 do

	render :partial => "spree/admin/shared/address"
	
	render :partial => "spree/admin/shared/order_data"
	
	render :partial => "spree/admin/shared/topic"
	
	render :partial => "spree/admin/shared/line_items_box"
	
	render :partial => "spree/admin/shared/notes"

end

render :partial => "spree/admin/shared/footer"
