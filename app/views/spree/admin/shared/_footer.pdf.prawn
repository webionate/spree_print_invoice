repeat :all do

	bounding_box [20,50], :width => 540 do
	
	  stroke do
	    line_width 0.1
	    line bounds.top_left, bounds.top_right
	  end
	  
	  send_returns_to = "<b>#{I18n.t(:send_returns_to)}</b>\n#{I18n.t(:company_name)}\n#{I18n.t(:store_address_street)}\n#{I18n.t(:store_address_zip)} #{I18n.t(:store_address_city)}"
	
		manager = "<b>#{I18n.t(:manager)}</b>\n#{I18n.t(:company_manager)}"
	
	  traderegister = "<b>#{I18n.t(:traderegister)}</b>\n#{I18n.t(:taxnumber)}\n#{I18n.t(:company_taxnumber)}"
	
	  bankaccount = "<b>#{I18n.t(:bank_account)}</b>\n#{I18n.t(:company_bank_name)}\n#{I18n.t(:account_number)}: #{I18n.t(:company_bank_accountnumber)}\n#{I18n.t(:bank_code)}: #{I18n.t(:company_bank_bankcode)}"
	
		footerdata = [[make_cell(:content => send_returns_to), make_cell(:content => manager), make_cell(:content => traderegister), make_cell(:content => bankaccount)]]
	  
		table(footerdata, :column_widths => [135, 135, 135, 135], :cell_style => {:padding => [2, 0, 2, 0], :border_width => 0, :size => 7, :inline_format => true})
		
	end

end