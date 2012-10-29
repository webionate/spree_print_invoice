bounding_box [0,cursor], :width => 540 do
    
  	orderdata = [[" ", Prawn::Table::Cell.new( :text => I18n.t(:order_number), :font_style => :bold ),  :text => (@order.number), :align => :right, :font_style => :bold ]]

	orderdata << ["", I18n.t(:shipment_number) , :text => @shipment.number, :align => :right ] if @packaging_slip

  	orderdata << ["", I18n.t(:order_date) , :text => l(@order.completed_at.to_date), :align => :right ]

	orderdata << ["", I18n.t(:invoice_date) , :text => l(Date.today.to_date), :align => :right ]

	if @shipment.state == 'shipped'
		orderdata << ["", I18n.t(:delivery_date) , :text => l(@shipment.shipped_at.to_date), :align => :right ]
	end

    table orderdata,
      :position => :center,
      :border_width => 0.0,
      :vertical_padding   => 0,
      :horizontal_padding => 0,
      :font_size => 10,
      :column_widths => { 0 => 340, 1 => 100, 2 => 100}

end