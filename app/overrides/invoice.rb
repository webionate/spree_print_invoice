Deface::Override.new(:virtual_path => "spree/admin/orders/index",
                     :name => "link_to_invoice",
                     :insert_top => "[data-hook='admin_orders_index_row_actions'], #admin_orders_index_row_actions[data-hook]",
                     :partial => "spree/admin/orders/invoice_link",
                     :disabled => false)
                     
Deface::Override.new(:virtual_path => "spree/admin/orders/edit",
                     :name => "invoice_botton_edit",
                     :insert_top => "[data-hook='admin_order_edit_buttons'], #admin_order_edit_buttons[data-hook]",
                     :partial => "spree/admin/orders/invoice_button",
                     :disabled => false)
                     
Deface::Override.new(:virtual_path => "spree/admin/orders/show",
                     :name => "invoice_botton_show",
                     :insert_top => "[data-hook='admin_order_show_buttons'], #admin_order_show_buttons[data-hook]",
                     :partial => "spree/admin/orders/invoice_button",
                     :disabled => false)