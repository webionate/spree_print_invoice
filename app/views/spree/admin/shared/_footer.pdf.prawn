repeat :all do

	bounding_box [0,50], :width => 540 do
	
	  stroke do
	    line_width 0.1
	    line bounds.top_left, bounds.top_right
	    #line bounds.top_left, bounds.bottom_left
	    #line bounds.top_right, bounds.bottom_right
	    #line bounds.bottom_left, bounds.bottom_right
	  end
	
	  footerdata = [[Prawn::Table::Cell.new(:text => I18n.t(:send_returns_to), :font_style => :bold), Prawn::Table::Cell.new(:text => I18n.t(:manager), :font_style => :bold), Prawn::Table::Cell.new(:text => I18n.t(:traderegister), :font_style => :bold), Prawn::Table::Cell.new(:text => I18n.t(:bank_account), :font_style => :bold)]]
		
	  footerdata << [I18n.t(:company_name), I18n.t(:company_manager), I18n.t(:company_traderegister) , I18n.t(:company_bank_name) ]
		
	  footerdata << [I18n.t(:store_address_street), " ", I18n.t(:taxnumber) , "#{I18n.t(:account_number)}: #{I18n.t(:company_bank_accountnumber)}"  ]
		
	  footerdata << ["#{I18n.t(:store_address_zip)} #{I18n.t(:store_address_city)}", " ", I18n.t(:company_taxnumber) , "#{I18n.t(:bank_code)}: #{I18n.t(:company_bank_bankcode)}" ]
	
	  table footerdata,
	    :border_width => 0,
	    :vertical_padding   => 2,
	    :horizontal_padding => 0,
	    :font_size => 7,
	    :font_style => :normal,
	    :column_widths => { 0 => 135, 1 => 135, 2 => 135, 3 => 135 }
	end

end


#<tr><td>IBAN:</td> <td><%= t :company_bank_iban %></td></tr>
#<tr><td>BIC:</td> <td><%= t :company_bank_bic %></td></tr></table>
