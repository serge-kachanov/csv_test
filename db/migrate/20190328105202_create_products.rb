class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string  :name
      t.string  :photo_url
      t.string  :barcode
      t.integer :price
      t.string  :sku
      t.string  :producer

      t.timestamps
    end

    add_index :products, :sku, unique: true
    execute("CREATE INDEX 'index_products_on_producer' ON 'products' ('producer' COLLATE NOCASE);")
  end
end
