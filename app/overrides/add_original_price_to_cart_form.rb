Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
  :name => 'add_original_price_to_cart_form',
  :insert_after => "span[itemprop=priceCurrency]",
  :text => "<span class='original_price'><%= number_to_currency(@product.original_price) %></span>")


