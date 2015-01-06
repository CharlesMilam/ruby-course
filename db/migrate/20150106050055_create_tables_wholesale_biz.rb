class CreateTablesWholesaleBiz < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :address
    end

    create_table :products do |t|
      t.string :description
      t.float :price
    end

    create_table :orders do |t|
      t.integer :customer_id
      t.integer :product_id
      t.integer :qty
      t.float :price
      t.float :total
    end
  end
end
