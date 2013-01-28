repeat :all do

	bounding_box [20,50], :width => 540 do
	
	  stroke do
	    line_width 0.1
	    line bounds.top_left, bounds.top_right
	  end
	
	  footerdata = [[make_cell(:content => I18n.t(:send_returns_to), :font_style => :bold), make_cell(:content => I18n.t(:manager), :font_style => :bold), make_cell(:content => I18n.t(:traderegister), :font_style => :bold), make_cell(:content => I18n.t(:bank_account), :font_style => :bold)]]
		
	  footerdata << [I18n.t(:company_name), I18n.t(:company_manager), I18n.t(:company_traderegister) , I18n.t(:company_bank_name) ]
		
	  footerdata << [I18n.t(:store_address_street), " ", I18n.t(:taxnumber) , "#{I18n.t(:account_number)}: #{I18n.t(:company_bank_accountnumber)}"  ]
		
	  footerdata << ["#{I18n.t(:store_address_zip)} #{I18n.t(:store_address_city)}", " ", I18n.t(:company_taxnumber) , "#{I18n.t(:bank_code)}: #{I18n.t(:company_bank_bankcode)}" ]
	  
		table(footerdata, :column_widths => [135, 135, 135, 135], :cell_style => {:padding => [2, 0, 2, 0], :border_width => 0, :size => 7})
		
	end

end