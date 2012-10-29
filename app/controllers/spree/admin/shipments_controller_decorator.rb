Spree::Admin::ShipmentsController.class_eval do
  
  def show
    shipment
    respond_with(@shipment) do |format|
      format.pdf do
        render :layout => false , :template => "spree/admin/shipments/packaging_slip.pdf.prawn"
      end
    end
  end

  private
    def load_shipment
      @shipment = Spree::Shipment.find_by_number!(params[:id]) if params[:id]
    end
end
