repeat :all do

	im = "#{Rails.root.to_s}/app/assets/images/#{Spree::PrintInvoice::Config[:logo]}"
	image im , :at => [20,740], :scale => 0.75

	bounding_box [20,740], :width => 540 do
	    
	  	headerdata = [["", Prawn::Table::Cell.new(:text => I18n.t(:company_name), :font_style => :bold), ""]]
	
	  	headerdata << ["", I18n.t(:store_address_street), "" ]
	
		headerdata << [ "", "#{I18n.t(:store_address_zip)} #{I18n.t(:store_address_city)}", "" ]
		
		headerdata << [ " ", " ", " " ]
	
		headerdata << [ "", I18n.t(:phone), I18n.t(:store_address_phone) ]
		
		headerdata << [ "", I18n.t(:fax), I18n.t(:store_address_fax) ]
		
		headerdata << [ "", I18n.t(:email), I18n.t(:store_address_email) ]
		
		headerdata << [ "", I18n.t(:website), Spree::Config[:site_url] ]
	
	    table headerdata,
	      :position => :center,
	      :border_width => 0.0,
	      :vertical_padding   => 0,
	      :horizontal_padding => 0,
	      :font_size => 7,
	      :column_widths => { 0 => 340, 1 => 90, 2 => 110}
	
	end

end