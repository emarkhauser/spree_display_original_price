Deface::Override.new(:virtual_path => 'spree/shared/_products',
  :name => 'add_original_price_to_product',
  :insert_after => "span.price",
  :text => "<span class='original_price'><%= number_to_currency(product.original_price) %></span>")


