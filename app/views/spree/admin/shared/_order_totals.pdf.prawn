move_down(7)

tracking = I18n.t('shipment_mailer.shipped_email.track_information', :tracking => @shipment.tracking) if @shipment.tracking && !@shipment.tracking.empty?

totals = []

totals << [ Prawn::Table::Cell.new(:text => tracking, :font_size => 10), Prawn::Table::Cell.new( :text => t(:subtotal), :font_style => :bold), number_to_currency(@order.item_total)]

@order.adjustments.each do |charge|
  totals << ["", Prawn::Table::Cell.new( :text => charge.label + ":", :font_style => :bold), number_to_currency(charge.amount)]
end

@order.price_adjustments.each do |charge|
  totals << ["", Prawn::Table::Cell.new( :text => charge.label + ":", :font_style => :bold), number_to_currency(charge.amount)]
end

totals << ["", Prawn::Table::Cell.new( :text => t(:order_total), :font_style => :bold), number_to_currency(@order.total)]

bounding_box [0, cursor], :width => 534 do
  table totals,
    :position => :right,
    :border_width => 0,
    :vertical_padding   => 2,
    :horizontal_padding => 0,
    :font_size => 9,
    :column_widths => { 0 => 371, 1 => 94, 2 => 69 } ,
    :align => { 0 => :left, 1 => :right, 2 => :right }
end
