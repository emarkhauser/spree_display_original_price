Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
  :name => 'add_original_price_to_product_edit',
  :insert_after => "erb[loud]:contains('text_field :price')",
  :text => "
    <%= f.field_container :original_price do %>
      <%= f.label :original_price, raw(Spree.t(:original_price) + content_tag(:span, ' *')) %>
      <%= f.text_field :original_price, :value =>
        number_to_currency(@product.original_price, :unit => '') %>
      <%= f.error_message_on :original_price %>
    <% end %>
  ")