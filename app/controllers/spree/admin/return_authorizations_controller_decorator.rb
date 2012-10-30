Spree::Admin::ReturnAuthorizationsController.class_eval do
  
  def show
    return_authorization
    respond_with(@return_authorization) do |format|
      format.pdf do
        render :layout => false , :template => "spree/admin/return_authorizations/credit_note.pdf.prawn"
      end
    end
  end
  
  def return_authorization
    @return_authorization ||= Spree::ReturnAuthorization.find_by_number(params[:id])
  end
  
end
