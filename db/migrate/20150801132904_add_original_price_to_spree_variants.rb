class AddOriginalPriceToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :original_price, :decimal, :precision => 8, :scale => 2
  end
end
