require 'prawn/layout'

font "Helvetica"

fill_color "000000"

font_size 10

render :partial => "spree/admin/shared/header"

bounding_box [0,600], :width => 540, :height => 540 do

	render :partial => "spree/admin/shared/address"
	
	render :partial => "spree/admin/shared/order_data"
	
	render :partial => "spree/admin/shared/topic"
	
	render :partial => "spree/admin/shared/line_items_box"
	
	render :partial => "spree/admin/shared/notes"

end

render :partial => "spree/admin/shared/footer"
