repeat :all do

	im = "#{Rails.root.to_s}/app/assets/images/#{Spree::PrintInvoice::Config[:logo]}"
	image im , :at => [20,740], :scale => 0.75

	bounding_box [360,740], :width => 200 do
	    
	 	headerdata = [ [ make_cell(:content => I18n.t(:company_name), :font_style => :bold), "" ] ]
	
		headerdata << [ I18n.t(:store_address_street), "" ]
	
		headerdata << [ "#{I18n.t(:store_address_zip)} #{I18n.t(:store_address_city)}", "" ]
		
		headerdata << [ " ", " " ]
	
		headerdata << [I18n.t(:phone), I18n.t(:store_address_phone) ]
		
		headerdata << [ I18n.t(:fax), I18n.t(:store_address_fax) ]
		
		headerdata << [ I18n.t(:email), I18n.t(:store_address_email) ]
		
		headerdata << [ I18n.t(:website), Spree::Config[:site_url] ]

		table(headerdata, :column_widths => [90, 110], :cell_style => {:padding => [0, 0, 0, 0], :border_width => 0, :size => 7})
	
	end

end