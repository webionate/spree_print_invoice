Deface::Override.new(:virtual_path => "spree/admin/shipments/index",
                     :name => "link_to_packaging_slip",
                     :insert_top => "[data-hook='admin_shipments_index_row_actions'], #admin_shipments_index_row_actions[data-hook]",
                     :partial => "spree/admin/shipments/packaging_slip_link",
                     :disabled => false)
                     
Deface::Override.new(:virtual_path => "spree/admin/shipments/edit",
                     :name => "shipment_botton_edit",
                     :insert_top => "[data-hook='admin_shipment_edit_buttons'], #admin_shipment_edit_buttons[data-hook]",
                     :partial => "spree/admin/shipments/packaging_slip_button",
                     :disabled => false)