module Spree
  class PrintInvoiceConfiguration < Preferences::Configuration
    preference :logo, :string, :default => Spree::Config[:logo]
  end
end
