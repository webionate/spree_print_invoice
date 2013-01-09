Deface::Override.new(:virtual_path => "spree/admin/orders/index",
                     :name => "link_to_invoice",
                     :insert_top => "[data-hook='admin_orders_index_row_actions'], #admin_orders_index_row_actions[data-hook]",
                     :partial => "spree/admin/orders/invoice_link",
                     :disabled => false)