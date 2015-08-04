Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
  :name => 'add_original_price_to_product_edit',
  :insert_after => "div[data-hook=admin_product_form_price]",
  :text => "
    <div data-hook='admin_product_form_original_price'>
      <%= f.field_container :original_price, class: ['form-group'] do %>
        <%= f.label :original_price, raw(Spree.t(:original_price)) %>
        <%= f.text_field :original_price, :value => number_to_currency(@product.original_price, :unit => ''), class: 'form-control' %>
        <%= f.error_message_on :original_price %>
      <% end %>
    </div>
  ")